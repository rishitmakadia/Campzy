buildscript {
    repositories {
        google() // ✅ Required for Firebase & Google Services
        mavenCentral() // ✅ Required for dependencies
    }
    dependencies {
        classpath("com.google.gms:google-services:4.3.15") // ✅ Do NOT remove this
    }
}


allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
