load("@scala_things//:dependencies/dependencies.bzl", "java_dependency", "scala_dependency", "scala_fullver_dependency", "make_scala_versions", "apply_scala_version", "apply_scala_fullver_version")
load("@rules_jvm_external//:defs.bzl", "maven_install")

scala_versions = make_scala_versions(
    "2",
    "13",
    "6",
)

grpc_version = "1.42.1"

project_deps = [
  java_dependency("io.grpc", "grpc-stub", grpc_version)
]

def add_scala_fullver(s):
    return apply_scala_fullver_version(scala_versions, s)
