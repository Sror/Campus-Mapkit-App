//
//  DecaturViewController.m
//  tabbedmap
//
//  Created by Georgia Perimeter College on 6/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DecaturViewController.h"
#import "DisplayMap.h"
#import "EventViewController.h"


@implementation DecaturViewController
@synthesize DecaturMapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    
    self.DecaturMapView.delegate = self;

    [DecaturMapView setMapType:MKMapTypeHybrid];
    [DecaturMapView setZoomEnabled:YES];
    [DecaturMapView setScrollEnabled:YES];
       
    // Pin 1
    
    MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region.center.latitude = 33.688368 ;
    region.center.longitude = -84.274648;
    region.span.longitudeDelta = 0.01f;
    region.span.latitudeDelta = 0.01f;
    
    [DecaturMapView setRegion:region animated:YES]; 
    
    [DecaturMapView setDelegate:self];
    
    DisplayMap *ann = [[DisplayMap alloc] initWithCoordinate:region.center title:@"SB Building"];
    ann.image=[UIImage imageNamed:@"humanities-logo"];
    
    [DecaturMapView addAnnotation:ann];
    
    // Pin 2
    
    MKCoordinateRegion region1 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region1.center.latitude = 33.689124;
    region1.center.longitude = -84.273326;
    region1.span.longitudeDelta = 0.01f;
    region1.span.latitudeDelta = 0.01f;
   
    DisplayMap *ann1 = [[DisplayMap alloc] initWithCoordinate:region1.center title:@"Student Success Center"];
    ann1.image=[UIImage imageNamed:@"computer-icon"];
    
    [DecaturMapView addAnnotation:ann1];
    ann1.canShowCallout = YES;    
    
    // Pin 3
    
    MKCoordinateRegion region2 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region2.center.latitude = 33.689088;
    region2.center.longitude = -84.274264;
    region2.span.longitudeDelta = 0.01f;
    region2.span.latitudeDelta = 0.01f;
    
    DisplayMap *ann2 = [[DisplayMap alloc] initWithCoordinate:region2.center title:@"SA Building"];
    ann2.image=[UIImage imageNamed:@"earth-logo"];
    
    [DecaturMapView addAnnotation:ann2];
    
    // Pin 4
    
    MKCoordinateRegion region4 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region4.center.latitude = 33.68857;
    region4.center.longitude = -84.274988;
    region4.span.longitudeDelta = 0.01f;
    region4.span.latitudeDelta = 0.01f;
    
    DisplayMap *ann4 = [[DisplayMap alloc] initWithCoordinate:region4.center title:@"SC Building"];
    ann4.image=[UIImage imageNamed:@"gym-logo"];
    
    [DecaturMapView addAnnotation:ann4];
    ann4.canShowCallout = YES;
    
    // Pin 5
    
    MKCoordinateRegion region5 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region5.center.latitude = 33.689258;
    region5.center.longitude = -84.27486;
    region5.span.longitudeDelta = 0.01f;
    region5.span.latitudeDelta = 0.01f;
    
    DisplayMap *ann5 = [[DisplayMap alloc] initWithCoordinate:region5.center title:@"SG Building"];
    ann5.image=[UIImage imageNamed:@"police-logo"];
    
    [DecaturMapView addAnnotation:ann5];
    ann5.canShowCallout = YES;   
    
    
    // Pin 6
    
    MKCoordinateRegion region6 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region6.center.latitude = 33.688258;
    region6.center.longitude = -84.27575;
    region6.span.longitudeDelta = 0.01f;
    region6.span.latitudeDelta = 0.01f;
    
    DisplayMap *ann6 = [[DisplayMap alloc] initWithCoordinate:region6.center title:@"SH Building"];
    ann6.image=[UIImage imageNamed:@"computer-icon"];
    
    [DecaturMapView addAnnotation:ann6];
    ann6.canShowCallout = YES;   
    
    // Pin 7
    
    MKCoordinateRegion region7 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region7.center.latitude = 33.687526;
    region7.center.longitude = -84.27471;
    region7.span.longitudeDelta = 0.01f;
    region7.span.latitudeDelta = 0.01f;
    
    DisplayMap *ann7 = [[DisplayMap alloc] initWithCoordinate:region7.center title:@"SE Building/Greenhouses"];
    ann7.image=[UIImage imageNamed:@"gpc-logo"];
    
    [DecaturMapView addAnnotation:ann7];
    ann7.canShowCallout = YES; 
    
    // Pin 8
    
    MKCoordinateRegion region8 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region8.center.latitude = 33.687642;
    region8.center.longitude = -84.274243;
    region8.span.longitudeDelta = 0.01f;
    region8.span.latitudeDelta = 0.01f;
    
    DisplayMap *ann8 = [[DisplayMap alloc] initWithCoordinate:region8.center title:@"SD Building"];
    ann8.image=[UIImage imageNamed:@"gpc-logo"];
    
    [DecaturMapView addAnnotation:ann8];
    ann8.canShowCallout = YES; 
    
}    

- (MKAnnotationView *)mapView:(MKMapView *)mv viewForAnnotation:(id <MKAnnotation>)annotation{static NSString *parkingAnnotationIdentifier=@"ParkingAnnotationIdentifier";
    
    if([annotation isKindOfClass:[MKAnnotationView class]]){
        //Try to get an unused annotation, similar to uitableviewcells
        MKAnnotationView *annotationView=[DecaturMapView dequeueReusableAnnotationViewWithIdentifier:parkingAnnotationIdentifier];
        
        //If one isn't available, create a new one
        if(!annotationView){
            annotationView=[[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:parkingAnnotationIdentifier];
            annotationView.canShowCallout = YES;
            
            //Here's where the magic happens
            
            annotationView.image=[UIImage imageNamed:@"gpc-jaguar"];
            
            //Here's where the magic happens, just added this code 
            
            UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
            annotationView.rightCalloutAccessoryView = rightButton;
            
            UIImageView *leftCalloutView = [[UIImageView alloc] 
                                            initWithImage:((DisplayMap *)annotation).image];
            annotationView.leftCalloutAccessoryView = leftCalloutView;
            
            // UIImageView *annotatingimage = [[UIImageView alloc] 
            //                               initWithImage:((DisplayMap *)annotation).image];
            //annotationView.image = annotatingimage.image;
            
            UIImageView *leftCalloutView2 = [[UIImageView alloc] 
                                             initWithImage:((MKAnnotationView *)annotation).image];
            annotationView.leftCalloutAccessoryView = leftCalloutView2;
        }
        
        annotationView.image = ((MKAnnotationView *)annotationView).image;
        
        return annotationView;
    }
    return nil;     
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    DisplayMap *dm = (DisplayMap *)view.annotation;
    
    EventViewController *evc = [self.storyboard instantiateViewControllerWithIdentifier:@"eventViewIdentifier"];
    evc.title = dm.title;
    
    [self.navigationController pushViewController:evc animated:YES];
}


- (void)viewDidUnload
{
    [self setDecaturMapView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
