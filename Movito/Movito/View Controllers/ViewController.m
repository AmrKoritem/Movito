//
//  ViewController.m
//  Movito
//
//  Created by Amr Mohamed Koritem on 3/30/19.
//  Copyright © 2019 Amr Mohamed Koritem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void) renderMovieDataToView
{
    NSMutableString* tmpStr = [[NSMutableString alloc] initWithString:@"https://image.tmdb.org/t/p/w600_and_h900_bestv2/"];
    //w185
    [tmpStr appendString:[_movie posterPath]];
    
    [_moviePosterImage sd_setImageWithURL:[NSURL URLWithString:tmpStr] placeholderImage:[UIImage imageNamed:@"wait.png"]];
    
    NSNumber *num = [NSNumber numberWithDouble:[_movie voteAverage]];
    
    [_movieRatingLabel setText:[num stringValue]];
    [_movieTitleLabel setText:[_movie originalTitle]];
    [_movieDateLabel setText:[_movie releaseDate]];
    [_movieOverviewText setText:[_movie overview]];
}

-(void) showLoading
{
    //
}

-(void) hideLoading
{
    //
}

-(void) showErrorMessage : (NSString*) errorMessage
{
    //
}

@end
