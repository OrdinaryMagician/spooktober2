void SetupMaterial( inout Material mat )
{
	vec2 uv = vTexCoord.st;
	uv.x += cos(uv.y*3.434+timer)*.076;
	uv.y += cos(uv.x*2.235+timer)*.034;
	vec4 col = vec4(0.);
	vec3 norm = vec3(0.);
	uv.x -= timer*.01234;
	uv.y -= timer*.02124;
	col += getTexel(uv);
	norm += ApplyNormalMap(uv);
	uv.x -= timer*.02452;
	uv.y -= timer*.03533;
	col += getTexel(uv);
	norm += ApplyNormalMap(uv);
	col *= .5;
	norm *= .5;
	mat.Base = col;
	mat.Normal = norm;
}
