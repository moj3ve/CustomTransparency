@interface MTMaterialLayer
	@property (assign,getter=isReduceTransparencyEnabled,nonatomic) BOOL reduceTransparencyEnabled;
@end

@interface MTMaterialView : UIView

@end

%hook MTMaterialView
	-(id)_materialLayer
	{
		MTMaterialLayer *orig = %orig;
		if (([self.superview class] == objc_getClass("PLPlatterView")) ||
		([self.superview class] == objc_getClass("NCNotificationShortLookView")) ||
		([self.superview class] == objc_getClass("SBFolderBackgroundView")) ||
		([self.superview class] == objc_getClass("WGWidgetPlatterView")))
		{
			orig.reduceTransparencyEnabled = YES;
		}

		return orig;

	}
%end
