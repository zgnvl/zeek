# See the file "COPYING" in the main distribution directory for copyright.

include(BroSubdir)

include_directories(BEFORE
                    ${CMAKE_CURRENT_SOURCE_DIR}
                    ${CMAKE_CURRENT_BINARY_DIR}
)

set(zeexygen_SRCS
    Manager.cc
    Info.h
    PackageInfo.cc
    ScriptInfo.cc
    IdentifierInfo.cc
    Target.cc
    Configuration.cc
    ReStructuredTextTable.cc
    utils.cc
)

bif_target(zeexygen.bif)
bro_add_subdir_library(zeexygen ${zeexygen_SRCS})

add_dependencies(bro_zeexygen generate_outputs)
