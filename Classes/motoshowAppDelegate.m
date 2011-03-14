//
//  motoshowAppDelegate.m
//  motoshow
//
//  Created by 김민수 on 11. 3. 2..
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "motoshowAppDelegate.h"
#import "PhoneGapViewController.h"

@implementation motoshowAppDelegate

- (id) init
{	
	/** If you need to do any extra app-specific initialization, you can do it here
	 *  -jm
	 **/
    return [super init];
}

/**
 * This is main kick off after the app inits, the views and Settings are setup here.
 */
- (void)applicationDidFinishLaunching:(UIApplication *)application
{	
	[ super applicationDidFinishLaunching:application ];
}

-(id) getCommandInstance:(NSString*)className
{
	/** You can catch your own commands here, if you wanted to extend the gap: protocol, or add your
	 *  own app specific protocol to it. -jm
	 **/
	return [super getCommandInstance:className];
}

/**
 Called when the webview finishes loading.  This stops the activity view and closes the imageview
 */
- (void)webViewDidFinishLoad:(UIWebView *)theWebView 
{
	return [ super webViewDidFinishLoad:theWebView ];
}

- (void)webViewDidStartLoad:(UIWebView *)theWebView 
{
	return [ super webViewDidStartLoad:theWebView ];
}

/**
 * Fail Loading With Error
 * Error - If the webpage failed to load display an error with the reson.
 */
- (void)webView:(UIWebView *)theWebView didFailLoadWithError:(NSError *)error 
{
	return [ super webView:theWebView didFailLoadWithError:error ];
}

/**
 * Start Loading Request
 * This is where most of the magic happens... We take the request(s) and process the response.
 * From here we can re direct links and other protocalls to different internal methods.
 */
- (BOOL)webView:(UIWebView *)theWebView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
	return [ super webView:theWebView shouldStartLoadWithRequest:request navigationType:navigationType ];
}


- (BOOL) execute:(InvokedUrlCommand*)command
{
	return [ super execute:command];
}

- (void)dealloc
{
	[ super dealloc ];
}


+ (NSString*)wwwFolderName {
  
  NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
  NSLocale* locale = [[[NSLocale alloc] initWithLocaleIdentifier:@"ko_KO"] autorelease]; //로케일 설정
  [dateFormatter setLocale:locale];
  [dateFormatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
  
  // 현재
  NSDate *now = [NSDate date];
  // 개막식
  NSDate *startDateTime = [dateFormatter dateFromString:@"2011-04-01 11:00:00"];
  // 끝나는날 시간
  NSDate *endDateTime = [dateFormatter dateFromString:@"2011-04-10 19:00:00"];
  
	/*
  NSLog([dateFormatter stringFromDate:now]);
  NSLog([dateFormatter stringFromDate:startDateTime]);
  NSLog([dateFormatter stringFromDate:endDateTime]);
	 */

	/*
  switch ([now compare:startDateTime]) {
    case NSOrderedAscending:
      return @"www/before";
      break;

    case NSOrderedDescending:
      if ([now compare:endDateTime] == NSOrderedDescending) 
        return @"www/later";
      else 
        return @"www/ing";
      break;
  }
  */
  return @"www/ing"; // 개발시에만..

}


+ (NSString*)startPage {
	return @"index.html";
}


@end
