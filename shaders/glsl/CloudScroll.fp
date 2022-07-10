void SetupMaterial( inout Material mat )
{
	vec2 uv = vTexCoord.st+vec2(1.,0.)*SCROLLSPEED*timer;
	mat.Base = getTexel(uv);
	mat.Normal = -ApplyNormalMap(uv);	// invert normals for lighting
}
