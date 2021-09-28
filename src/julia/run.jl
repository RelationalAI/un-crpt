using RelationalAI

include("install_rel_src.jl")
conn = LocalConnection(dbname=:un)
create_database(conn; overwrite=true)
install_rel(conn)
println("Installation complete.")
