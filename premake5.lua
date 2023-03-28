project "Box2D"
	kind "StaticLib"
	language "C++"
    cppdialect "C++latest"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"sec/**.h",
        "src/**.cpp",
        "include/**.h"
	}

    includedirs
    {
        "include",
        "src"
    }

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
