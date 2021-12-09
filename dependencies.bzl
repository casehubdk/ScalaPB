load("@scala_things//:dependencies/dependencies.bzl", "java_dependency", "scala_dependency", "scala_fullver_dependency", "make_scala_versions", "apply_scala_version", "apply_scala_fullver_version")
load("@rules_jvm_external//:defs.bzl", "maven_install")

scala_versions = make_scala_versions(
    "2",
    "13",
    "6",
)

grpc_version = "1.42.1"

project_deps = [
  java_dependency("io.grpc", "grpc-stub", grpc_version),
  java_dependency("io.grpc", "grpc-protobuf", grpc_version),
  java_dependency("io.grpc", "grpc-netty", grpc_version),
  java_dependency("io.grpc", "grpc-services", grpc_version),
  java_dependency("io.grpc", "protoc-gen-grpc-java", grpc_version),

  java_dependency("com.google.protobuf", "protobuf-java", "3.15.8"),

  scala_dependency("com.thesamet.scalapb", "protobuf-runtime-scala", "0.8.12"),
  scala_dependency("com.thesamet.scalapb", "protoc-gen", "0.9.3"),
  scala_dependency("com.thesamet.scalapb", "protoc-cache-coursier", "0.9.3"),

  scala_dependency("org.scala-lang.modules", "scala-collection-compat", "2.6.0")
]

def add_scala_fullver(s):
    return apply_scala_fullver_version(scala_versions, s)
