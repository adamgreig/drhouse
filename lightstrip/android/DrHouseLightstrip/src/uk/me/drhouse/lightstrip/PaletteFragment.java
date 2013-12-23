package uk.me.drhouse.lightstrip;

import android.support.v4.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridLayout;
import android.graphics.drawable.ColorDrawable;

public class PaletteFragment extends Fragment implements View.OnClickListener {
	View viewColor;
	
	@Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View v = inflater.inflate(R.layout.fragment_palette, container, false);
        
        viewColor = v.findViewById(R.id.viewPaletteColor);
        
        GridLayout gl = (GridLayout)v.findViewById(R.id.gridLayoutPalette);
        for(int idx=0; idx<gl.getChildCount(); idx++) {
        	Button b = (Button)gl.getChildAt(idx);
        	b.setOnClickListener(this);
        }
        return v;
    }

	@Override
	public void onClick(View v) {
		Button b = (Button)v;
    	int color = ((ColorDrawable)b.getBackground()).getColor();
    	viewColor.setBackgroundColor(color);
    	new SubmitColorTask().execute(color);
	}
}
