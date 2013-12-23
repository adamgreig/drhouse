package uk.me.drhouse.lightstrip;

import android.support.v4.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.graphics.Color;

public class RGBSliderFragment extends Fragment implements SeekBar.OnSeekBarChangeListener {
	
	SeekBar seekBarRed;
	SeekBar seekBarGreen;
	SeekBar seekBarBlue;
	View viewColor;
	
	@Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View v = inflater.inflate(R.layout.fragment_rgb_sliders, container, false);
        
		seekBarRed = (SeekBar)v.findViewById(R.id.seekBarR);
		seekBarGreen = (SeekBar)v.findViewById(R.id.seekBarG);
		seekBarBlue = (SeekBar)v.findViewById(R.id.seekBarB);
		
		viewColor = v.findViewById(R.id.viewRGBColor);
		
		seekBarRed.setOnSeekBarChangeListener(this);
		seekBarGreen.setOnSeekBarChangeListener(this);
		seekBarBlue.setOnSeekBarChangeListener(this);
		
        return v;
    }
	
	@Override
	public void onProgressChanged(SeekBar sb, int progress, boolean fromTouch) {
		int red = seekBarRed.getProgress();
		int green = seekBarGreen.getProgress();
		int blue = seekBarBlue.getProgress();
		int color = Color.rgb((int)((float)red * 2.55), (int)((float)green * 2.55), (int)((float)blue * 2.55));
		viewColor.setBackgroundColor(color);
		new SubmitColorTask().execute(color);
	}

	@Override
	public void onStartTrackingTouch(SeekBar sb) {
	}

	@Override
	public void onStopTrackingTouch(SeekBar sb) {
	}
}
