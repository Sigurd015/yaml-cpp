project "yaml_cpp"
	kind "StaticLib"
	language "C++"
	staticruntime "on"

	targetdir (outputdir .. "/%{prj.name}")
    objdir (intdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp",
		"include/**.h"
	}

	defines
	{
		"YAML_CPP_STATIC_DEFINE"
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
        runtime "Release"
        optimize "on"
        symbols "off"