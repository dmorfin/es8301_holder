// $Id$
// Copyright David Morfin 2013
// License CC BY 4.0 http://creativecommons.org/licenses/by/4.0/

$fa=1;
$fs=1;

module outershape( ) {

	translate( [0,0,-30] )
	render( ) 
	{
		hull( ) 
		{
		
			translate( [ 12,14,67+40] )
			sphere( r=7 );
			translate( [-12,14,67+40] )
			sphere( r=7 );
			translate( [ 14,-5,63+40] )
			sphere( r=9 );
			translate( [-14,-5,63+40] )
			sphere( r=9 );
			
			
			
			
			translate( [ 11, 8,3] )
			sphere( r=5 );
			translate( [-11, 8,3] )
			sphere( r=5 );
			translate( [ 10,-4,3] )
			sphere( r=7 );
			translate( [-10,-4,3] )
			sphere( r=7 );
			
			scale( [1.2,1.1,0.75] )
			sphere( r=12 );
		
		}
	}
}

module cutout( )
{
	hull( )
	{
		translate( [ 31,-20, 23+40] )
		sphere( r=3 );
		translate( [-31,-20, 23+40] )
		sphere( r=3 );
		translate( [ 31,  6, 18+30] )
		sphere( r=3 );
		translate( [-31,  6, 18+30] )
		sphere( r=3 );
		translate( [ 31,  8,- 3+15] )
		sphere( r=3 );
		translate( [-31,  8,- 3+15] )
		sphere( r=3 );
		translate( [ 31,-22,-38] )
		sphere( r=3 );
		translate( [-31,-22,-38] )
		sphere( r=3 );
	}
}


module holder( )
{
	difference( ) 
	{
		minkowski( ) 
		{
			outershape( );
			cube( [3,5,3], center=true );
		}
	//	scale( [0.8,0.8,0.8] )
		outershape( );
		translate( [0,4,44+40] )
		cube( [56, 44, 20], center=true );
		//	translate( [0,-10,-3] )
		//minkowski( )
		//{
		//	sphere( r=5 );
		//	cube( [56, 36, 40], center=true );
		//}
		*	translate( [0,-10,-3] )
			cube( [56, 36, 40], center=true );
		cutout( );
		translate( [0,-15, 30+40] )
		cube( [4,10,20], center=true );
		translate( [0,  8,-28] )
		hull( ) 
		{
			cube( [ 2,20,28], center=true );
			translate( [ 0,0,24 ] )
			cube( [14,20, 1], center=true );
		}
		translate( [0,  0,-38] )
		cube( [12,10,10], center=true );
		translate( [0,22,50] )
		rotate( [90,0,0] )
		cylinder( r1=1, r2=4, h=8, center=true );
		translate( [0,20,25] )
		rotate( [90,0,0] )
		cylinder( r1=1, r2=4, h=8, center=true );
	}
}

translate( [0,0,74] )
rotate( [0,180,0] )
holder( );