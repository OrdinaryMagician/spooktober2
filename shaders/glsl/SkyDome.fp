// equirectangular envmap (Y-padded since texture wrapping is forced)
#define RECIPROCAL_PI2 0.15915494

void SetupMaterial( inout Material mat )
{
	vec3 norm = normalize(vWorldNormalOrig.xyz);
	vec2 uv = vec2(atan(norm.z,norm.x)*RECIPROCAL_PI2+.5,asin(norm.y)*RECIPROCAL_PI2+.5);
	vec2 uv2 = vec2(atan(norm.z,abs(norm.x))*RECIPROCAL_PI2+.5,asin(norm.y)*RECIPROCAL_PI2+.5);
	mat.Base = textureGrad(tex,uv,dFdx(uv2),dFdy(uv2));
	mat.Normal = ApplyNormalMap(vTexCoord.st);
}
