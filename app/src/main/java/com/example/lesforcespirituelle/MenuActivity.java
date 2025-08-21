package com.example.lesforcespirituelle;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import android.widget.TextView;
import android.widget.LinearLayout;

public class MenuActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Menu provisoire
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(40, 80, 40, 40);

        TextView text = new TextView(this);
        text.setText("Menu principal - Fonctions à venir...");
        text.setTextSize(20);

        layout.addView(text);
        setContentView(layout);
    }
}
