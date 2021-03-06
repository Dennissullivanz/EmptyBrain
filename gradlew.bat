package com.example.randomnumber;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.DialogInterface;
import android.os.Bundle;
import android.system.ErrnoException;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import java.util.Random;
import java.util.logging.Logger;

public class MainActivity extends AppCompatActivity {

    int randomNumbber;

    public void setRandomNumbberGenerator(){

        Random rand = new Random();
        randomNumbber = rand.nextInt(20)+1;

    }

    public void onTebak(View view)
    {


        try {

            EditText jawaban = findViewById(R.id.jawaban);
            int tebakan = Integer.parseInt(jawaban.getText().toString());
            if(tebakan < randomNumbber)
            {

                Toast.makeText(this, "Terlalu Rendah", Toast.LENGTH_SHORT).show();
            } else if (tebakan > randomNumbber)
            {
                Toast.makeText(this, "Terlalu Tinggi", Toast.LENGTH_SHORT).show();
            } else if (tebakan == randomNumbber)
            {
                Toast.makeText(this, "Yaps Tebakan anda tepat ! yaitu: "+randomNumbber, Toast.LENGTH_SHORT).show();
                setRandomNumbberGenerator();
            }

        } catch (Exception e)
        {
            new AlertDialog.Builder(MainActivity.this)
                    .setTitle("Salah !")
                    .setMessage("Jawaban harus berupa angka").
                    setPositiveButton("Yes", new DialogInterface.OnClickListener() {
                    })
            Toast.makeText(this, "Jawaban harus berupa angka", Toast.LENGTH_SHORT).show();
        }


    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Random rand = new Random();
        randomNumbber = rand.nextInt(20)+1;
    }
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      