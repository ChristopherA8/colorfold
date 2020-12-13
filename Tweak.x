#include <Foundation/Foundation.h>
#include <UIKit/UIKit.h>

@interface SBFolderIconImageView : UIView
@end

%hook SBFolderIconImageView
-(void)layoutSubviews {
	NSArray *subviews = [self subviews];
	UIView *folder = [subviews objectAtIndex:0];
	folder.backgroundColor = UIColor.lightGrayColor;
	folder.layer.cornerRadius = 13.5;
	%orig;
}
%end