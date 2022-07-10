void SetupMaterial( inout Material mat )
{
	vec2 uv = vTexCoord.st;
	uv.x += cos(uv.y*3.434+timer)*.076;
	uv.y += cos(uv.x*2.235+timer)*.034;
	uv.x -= timer*.01234;
	uv.y -= timer*.02124;
	mat.Base = getTexel(uv);
	mat.Normal = ApplyNormalMap(uv);
}
