using RelationalAI

project_root = "$(@__DIR__)/../.."
src_root = "$project_root/src/rel/"

function install_rel(conn)
   
    rel_files = [
        SourceFile(src_root * "/lib.rel"),

        SourceFile(src_root * "/input.rel"),
        SourceFile(src_root * "/component_type_given.rel"),
        SourceFile(src_root * "/indicator_given.rel"),
        SourceFile(src_root * "/organization_given.rel"),
        SourceFile(src_root * "/ppi_given.rel"),
        SourceFile(src_root * "/prioritymatter_type_given.rel"),
        SourceFile(src_root * "/stress_type_given.rel"),
        SourceFile(src_root * "/stressor_type_given.rel"),
        SourceFile(src_root * "/urban_element_given.rel"),
        SourceFile(src_root * "/shock_classifiers_given.rel"),
        SourceFile(src_root * "/shock_impact_given.rel"),
    ]

    println("Installing Rel Files...")
    @time install_source(conn, rel_files)

end
