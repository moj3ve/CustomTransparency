#line 1 "Tweak.xm"
@interface MTMaterialLayer
	@property (assign,getter=isReduceTransparencyEnabled,nonatomic) BOOL reduceTransparencyEnabled;
@end

@interface MTMaterialView : UIView

@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class MTMaterialView; 
static id (*_logos_orig$_ungrouped$MTMaterialView$_materialLayer)(_LOGOS_SELF_TYPE_NORMAL MTMaterialView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$MTMaterialView$_materialLayer(_LOGOS_SELF_TYPE_NORMAL MTMaterialView* _LOGOS_SELF_CONST, SEL); 

#line 9 "Tweak.xm"


	static id _logos_method$_ungrouped$MTMaterialView$_materialLayer(_LOGOS_SELF_TYPE_NORMAL MTMaterialView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
		MTMaterialLayer *orig = _logos_orig$_ungrouped$MTMaterialView$_materialLayer(self, _cmd);
		if (([self.superview class] == objc_getClass("PLPlatterView")) ||
		([self.superview class] == objc_getClass("NCNotificationShortLookView")) ||
		([self.superview class] == objc_getClass("SBFolderBackgroundView")) ||
		([self.superview class] == objc_getClass("WGWidgetPlatterView")))
		{
			orig.reduceTransparencyEnabled = YES;
		}

		return orig;

	}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MTMaterialView = objc_getClass("MTMaterialView"); MSHookMessageEx(_logos_class$_ungrouped$MTMaterialView, @selector(_materialLayer), (IMP)&_logos_method$_ungrouped$MTMaterialView$_materialLayer, (IMP*)&_logos_orig$_ungrouped$MTMaterialView$_materialLayer);} }
#line 25 "Tweak.xm"
