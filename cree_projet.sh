#!/data/data/com.termux/files/usr/bin/bash
# Script pour initialiser un projet Android simple

# Aller dans le dossier du projet
cd ~/les_forces_spirituelle || exit

# Créer la structure des dossiers
mkdir -p app/src/main/java/com/example/lesforcespirituelle
mkdir -p app/src/main/res/layout
mkdir -p app/src/main/res/values

# Créer settings.gradle
cat > settings.gradle <<EOF
rootProject.name = "LesForcesSpirituelle"
include ':app'
EOF

# Créer build.gradle (niveau projet)
cat > build.gradle <<EOF
// build.gradle (Projet)
buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:8.4.0'
    }
}
allprojects {
    repositories {
        google()
        mavenCentral()
    }
}
EOF

# Créer build.gradle (module app)
cat > app/build.gradle <<EOF
plugins {
    id 'com.android.application'
}

android {
    namespace "com.example.lesforcespirituelle"
    compileSdk 34

    defaultConfig {
        applicationId "com.example.lesforcespirituelle"
        minSdk 21
        targetSdk 34
        versionCode 1
        versionName "1.0"
    }

    buildTypes {
        release {
            minifyEnabled false
        }
    }
}

dependencies {
    implementation 'androidx.appcompat:appcompat:1.6.1'
    implementation 'com.google.android.material:material:1.9.0'
}
EOF

# Créer un layout XML simple
cat > app/src/main/res/layout/activity_main.xml <<EOF
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:orientation="vertical"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:gravity="center">

    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Bienvenue dans Les Forces Spirituelle !" />
</LinearLayout>
EOF

# Créer un fichier strings.xml
cat > app/src/main/res/values/strings.xml <<EOF
<resources>
    <string name="app_name">Les Forces Spirituelle</string>
</resources>
EOF

# Créer une activité Java
cat > app/src/main/java/com/example/lesforcespirituelle/MainActivity.java <<EOF
package com.example.lesforcespirituelle;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
EOF

echo "✅ Projet Les Forces Spirituelle initialisé avec succès !"
