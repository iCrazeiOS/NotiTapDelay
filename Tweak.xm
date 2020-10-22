@interface NCNotificationShortLookView : UIView
@end

%hook NCNotificationShortLookView
-(void)setFrame:(CGRect)arg1 {
	%orig;
	if ([self.superview.superview.superview.superview.superview class] == objc_getClass("SBNotificationBannerWindow"))
	self.userInteractionEnabled = NO;
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
		self.userInteractionEnabled = YES;
	});
}
%end
