//
//  DunwoodyViewController.m
//  tabbedmap
//
//  Created by Georgia Perimeter College on 6/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DunwoodyViewController.h"
#import "DisplayMap.h"
#import "EventViewController.h"

@implementation DunwoodyViewController
@synthesize DunwoodyMapView;

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
    
    self.DunwoodyMapView.delegate = self;
    
    
    
    [DunwoodyMapView setMapType:MKMapTypeHybrid];
    [DunwoodyMapView setZoomEnabled:YES];
    [DunwoodyMapView setScrollEnabled:YES];
    
    
    
    
    
    
    
    
    // Pin 1
    
    MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region.center.latitude = 33.941114 ;
    region.center.longitude = -84.302586;
    region.span.longitudeDelta = 0.001f;
    region.span.latitudeDelta = 0.001f;
    
    [DunwoodyMapView setRegion:region animated:YES]; 
    
    [DunwoodyMapView setDelegate:self];
    
    
    
    DisplayMap *ann = [[DisplayMap alloc] initWithCoordinate:region.center title:@"CF Building"];
    ann.image=[UIImage imageNamed:@"art-logo"];
    
    [DunwoodyMapView addAnnotation:ann];
    
    
    
    
    
    // Pin 2
    
    MKCoordinateRegion region1 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region1.center.latitude = 33.793481;
    region1.center.longitude = -84.234935;
    region1.span.longitudeDelta = 0.01f;
    region1.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann1 = [[DisplayMap alloc] initWithCoordinate:region1.center title:@"CL Building"];
    ann1.image=[UIImage imageNamed:@"book-logo"];
    
    [DunwoodyMapView addAnnotation:ann1];
    ann1.canShowCallout = YES;    
    
    // Pin 3
    
    MKCoordinateRegion region2 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region2.center.latitude = 33.793593;
    region2.center.longitude = -84.23427;
    region2.span.longitudeDelta = 0.01f;
    region2.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann2 = [[DisplayMap alloc] initWithCoordinate:region2.center title:@"CE Building"];
    ann2.image=[UIImage imageNamed:@"humanities-logo"];
    
    [DunwoodyMapView addAnnotation:ann2];
    
    
    // Pin 4
    
    MKCoordinateRegion region4 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region4.center.latitude = 33.793303;
    region4.center.longitude = -84.233406;
    region4.span.longitudeDelta = 0.01f;
    region4.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann4 = [[DisplayMap alloc] initWithCoordinate:region4.center title:@"CH Building"];
    ann4.image=[UIImage imageNamed:@"americanflag-logo"];
    
    [DunwoodyMapView addAnnotation:ann4];
    ann4.canShowCallout = YES; 
    
    
    // Pin 5
    
    MKCoordinateRegion region5 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region5.center.latitude = 33.793022;
    region5.center.longitude = -84.234259;
    region5.span.longitudeDelta = 0.01f;
    region5.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann5 = [[DisplayMap alloc] initWithCoordinate:region5.center title:@"CD Building"];
    ann5.image=[UIImage imageNamed:@"sign-language-logo"];
    
    [DunwoodyMapView addAnnotation:ann5];
    ann5.canShowCallout = YES;   
    
    
    // Pin 6
    
    MKCoordinateRegion region6 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region6.center.latitude = 33.792394;
    region6.center.longitude = -84.234313;
    region6.span.longitudeDelta = 0.01f;
    region6.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann6 = [[DisplayMap alloc] initWithCoordinate:region6.center title:@"CC Building"];
    ann6.image=[UIImage imageNamed:@"computer-icon"];
    
    [DunwoodyMapView addAnnotation:ann6];
    ann6.canShowCallout = YES;   
    
    
    
    
    // Pin 7
    
    MKCoordinateRegion region7 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region7.center.latitude = 33.792768;
    region7.center.longitude = -84.234903;
    region7.span.longitudeDelta = 0.01f;
    region7.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann7 = [[DisplayMap alloc] initWithCoordinate:region7.center title:@"CN Building"];
    ann7.image=[UIImage imageNamed:@"social-icon"];
    
    [DunwoodyMapView addAnnotation:ann7];
    ann7.canShowCallout = YES; 
    
    
    
    
    // Pin 8
    
    MKCoordinateRegion region8 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region8.center.latitude = 33.791974;
    region8.center.longitude = -84.23486;
    region8.span.longitudeDelta = 0.01f;
    region8.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann8 = [[DisplayMap alloc] initWithCoordinate:region8.center title:@"CA Building"];
    ann8.image=[UIImage imageNamed:@"earth-logo"];
    
    [DunwoodyMapView addAnnotation:ann8];
    ann8.canShowCallout = YES; 
    
    
    
    
    
    
    // Pin 9
    
    MKCoordinateRegion region9 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region9.center.latitude = 33.791916;
    region9.center.longitude = -84.233835;
    region9.span.longitudeDelta = 0.01f;
    region9.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann9 = [[DisplayMap alloc] initWithCoordinate:region9.center title:@"CG Building"];
    ann9.image=[UIImage imageNamed:@"gym-logo"];
    
    [DunwoodyMapView addAnnotation:ann9];
    ann9.canShowCallout = YES; 
    
    
    
    
    
    
    // Pin 10
    
    MKCoordinateRegion region10 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region10.center.latitude = 33.791524;
    region10.center.longitude = -84.234404;
    region10.span.longitudeDelta = 0.01f;
    region10.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann10 = [[DisplayMap alloc] initWithCoordinate:region10.center title:@"CB Building"];
    ann10.image=[UIImage imageNamed:@"collegian-logo"];
    
    [DunwoodyMapView addAnnotation:ann10];
    ann10.canShowCallout = YES; 
    
    
    
    
    
    // Pin 11
    
    MKCoordinateRegion region11 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region11.center.latitude = 33.791011;
    region11.center.longitude = -84.234334;
    region11.span.longitudeDelta = 0.01f;
    region11.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann11 = [[DisplayMap alloc] initWithCoordinate:region11.center title:@"CS Building"];
    
    [DunwoodyMapView addAnnotation:ann11];
    ann11.canShowCallout = YES; 
    
    
    
    // Pin 12
    
    MKCoordinateRegion region12 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region12.center.latitude = 33.791872;
    region12.center.longitude = -84.231625;
    region12.span.longitudeDelta = 0.01f;
    region12.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann12 = [[DisplayMap alloc] initWithCoordinate:region12.center title:@"CM Building"];
    ann12.image=[UIImage imageNamed:@"gpc-logo"];
    
    [DunwoodyMapView addAnnotation:ann12];
    ann12.canShowCallout = YES; 
    
    
    
    
    // Pin 13
    
    MKCoordinateRegion region13 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region13.center.latitude = 33.795104;
    region13.center.longitude = -84.236856;
    region13.span.longitudeDelta = 0.01f;
    region13.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann13 = [[DisplayMap alloc] initWithCoordinate:region13.center title:@"CJ Building"];
    ann13.image=[UIImage imageNamed:@"police-logo"];
    
    [DunwoodyMapView addAnnotation:ann13];
    ann13.canShowCallout = YES; 
    
    
    
    // Pin 14
    
    MKCoordinateRegion region14 = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region14.center.latitude = 33.794716;
    region14.center.longitude = -84.236813;
    region14.span.longitudeDelta = 0.01f;
    region14.span.latitudeDelta = 0.01f;
    
    
    
    DisplayMap *ann14 = [[DisplayMap alloc] initWithCoordinate:region14.center title:@"CI Building"];
    ann14.image=[UIImage imageNamed:@"nursing-logo"];
    
    [DunwoodyMapView addAnnotation:ann14];
    ann14.canShowCallout = YES; 
    
    
    
}    






- (MKAnnotationView *)mapView:(MKMapView *)mv viewForAnnotation:(id <MKAnnotation>)annotation{static NSString *parkingAnnotationIdentifier=@"ParkingAnnotationIdentifier";
    
    if([annotation isKindOfClass:[MKAnnotationView class]]){
        //Try to get an unused annotation, similar to uitableviewcells
        MKAnnotationView *annotationView=[DunwoodyMapView dequeueReusableAnnotationViewWithIdentifier:parkingAnnotationIdentifier];
        
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
    [self setDunwoodyMapView:nil];
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
