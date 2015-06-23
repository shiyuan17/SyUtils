//
//  CommonMacro.h
//  syUtil
//
//  Created by 世缘 on 15/2/4.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#ifndef syUtil_CommonMacro_h
#define syUtil_CommonMacro_h


/*-------------------------------------view操作--------------------------------------------*/

//高度包含状态栏，即480(4寸屏)
#define SCREEN_BOUNDS [[UIScreen mainScreen] bounds]

//屏幕宽
#define SCREEN_BOUNDS_WIDTH [[UIScreen mainScreen] bounds].size.width

//屏幕高
#define SCREEN_BOUNDS_HEIGHT [[UIScreen mainScreen] bounds].size.height

//高度不包含状态栏（如果状态栏可见），即460(4寸屏)，不可见的话与bounds一样
#define SCREEN_NO_BOUNDS [[UIScreen mainScreen] applicationFrame]

//根据比例按宽度计算高度
#define getHeightByRate(oriWidth,oriHeight,newWidth) newWidth*oriHeight/oriWidth

//根据比例按高度计算宽度
#define getWidthByRate(oriWidth,oriHeight,newHeight) newHeight*oriWidth/oriHeight

//根据宽度计算在屏幕水平居中的X坐标开始位置
#define getCenterXByWith(oriWidth) (SCREEN_BOUNDS.size.width-oriWidth)/2

//电源栏高度
#define batteryHeight 20
//导航栏高度
#define navigationHeight 44

//toolbar高
#define toolbarHeight 49

//因为IOS7的坐标计算无视电池栏，所以要加返上
#define getBatteryH (isIOS7AndLater?20:0)

//从导航栏开始计算
#define startWithNav ((isIOS7AndLater?20:0)+navigationHeight)
#define startWithNav2 (IOS7Correct)+navigationHeight
//除去电源栏、导航栏、底部栏后的内容高度
#define k_contentHeight SCREEN_NO_BOUNDS.size.height-navigationHeight-toolbarHeight

//除去电源栏、导航栏的内容高度
#define contentHeightWithBottom SCREEN_NO_BOUNDS.size.height-navigationHeight

//键盘动画时间
#define keyboardAnimateTime 0.25

//动画时间
#define ANIMATE_TIME 1
/*-------------------------------------字符串/颜色操作--------------------------------------------*/
/**
 *  度数转弧度值
 *
 *  @param degrees 度数
 *
 *  @return 弧度值
 */
#define DegreeToPI(degrees) (degrees * M_PI / 180)

//判断字符串是否为空或nil
//#define NSStringIsNullOrEmpty(str) ({ NSString *_str=(str); ((_str==nil) || [_str isEqualToString:@""]);})

//判断字符串是否为空
#define NSStringIsNullOrEmpty(string) ({NSString *str=(string);(str==nil || [str isEqual:[NSNull null]] ||  str.length == 0 || [str isKindOfClass:[NSNull class]] || [[str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] isEqualToString:@""])?YES:NO;})

#define ArrayIsNotEmpty(arr) (arr && ![arr isEqual:[NSNull null]] && arr.count > 0)?YES:NO

//覆盖空字符串
#define ConvertNull(string) ({NSString *str=(string);(str==nil || [str isEqual:[NSNull null]] || [str isKindOfClass:[NSNull class]])?@"":str;})

// sample RGB(0xcccccc)
#define RGB16(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define RGB16withAlpha(rgbValue,alphaVal) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:alphaVal]

// sample RGB(255,255,255)
#define RGB(r,g,b) [UIColor colorWithRed:(float)r/255.0 green:(float)g/255.0 blue:(float)b/255.0 alpha:1.0]

//清除背景色
#define CLEARCOLOR [UIColor clearColor]



/*-------------------------------------系统判断操作--------------------------------------------*/

//系统类型
#define isbeforeIOS7 ([[[UIDevice currentDevice]systemVersion]floatValue] < 7.0?YES:NO)

#define isIOS7AndLater ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0?YES:NO)


//ios系统版本
#define ios8 [[[UIDevice currentDevice] systemVersion] floatValue] >=8.0f
#define ios7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f) && ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0f)
#define ios6 [[[UIDevice currentDevice] systemVersion] floatValue] < 7.0f
#define ios7AndLater [[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f


#define iphone4 ([UIScreen mainScreen].bounds.size.height==480.0f)

#define iphone5 ([UIScreen mainScreen].bounds.size.height==568.0f)

#define iphone6 ([UIScreen mainScreen].bounds.size.height==667.0f)

#define iphone6Plus ([UIScreen mainScreen].bounds.size.height==736.0f || [UIScreen mainScreen].bounds.size.height==414.0f)

/*-------------------------------------其他操作--------------------------------------------*/
//统一设置字体
//#define customFont(_size) [UIFont fontWithName:@"ArialHebrew" size:_size]
#define customFont(_size) [UIFont fontWithName:@"Arial" size:_size]

//#define customFont(_size) [UIFont systemFontOfSize:_size]

//方正黑体简体字体定义
#define FONT(F) [UIFont fontWithName:@"FZHTJW--GB1-0" size:F]

//NSString 转 int
#define StringToInt(i) [NSString stringWithFormat:@"%@",@(i)]

//使用ARC和不使用ARC
#if __has_feature(objc_arc)
//compiling with ARC
#else
// compiling without ARC
#endif

//G－C－D
#define GCD_BACK(block) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
#define GCD_MAIN(block) dispatch_async(dispatch_get_main_queue(),block)

//User Default初始化
#define USER_DEFAULT [NSUserDefaults standardUserDefaults]

//释放一个对象
#define SAFE_RELEASE(P) if(P) { [P release], P = nil; }

/**
 *  判断是否图片类型
 *
 *  @param imageType  JPG,JPEG,PNG,BMP,GIF
 *
 *  @return bool
 */
#define isImage(imageType) [[imageType uppercaseString] isEqualToString:@"JPG"] || [[imageType uppercaseString] isEqualToString:@"JPEG"] || [[imageType uppercaseString]  isEqualToString:@"PNG"] || [[imageType uppercaseString] isEqualToString:@"BMP"] || [[imageType uppercaseString] isEqualToString:@"GIF"]

/*-------------------------------------NSLog操作--------------------------------------------*/
#ifdef DEBUG
/*
 　1) __VA_ARGS__ 是一个可变参数的宏，很少人知道这个宏，这个可变参数的宏是新的C99规范中新增的，目前似乎只有gcc支持（VC6.0的编译器不支持）。宏前面加上##的作用在于，当可变参数的个数为0时，这里的##起到把前面多余的","去掉的作用,否则会编译出错, 你可以试试。
 　　2) __FILE__ 宏在预编译时会替换成当前的源文件名
 　　3) __LINE__宏在预编译时会替换成当前的行号
 　　4) __FUNCTION__宏在预编译时会替换成当前的函数名称
 */
//# define DLog(fmt, ...) NSLog((@"[文件名:%s]\n" "[函数名:%s]\n" "[行号:%d] \n" fmt), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);

#define DLog(fmt, ...) NSLog((@"[行号:%d] " fmt),__LINE__,##__VA_ARGS__);
//#	define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#define pwd printf("%s %d\n", __PRETTY_FUNCTION__, __LINE__);
#define debug_rect(arg) NSLog( @"CGRect ( %f, %f, %f, %f)", arg.origin.x, arg.origin.y, arg.size.width, arg.size.height );
#define debug_point( arg ) NSLog( @"CGPoint ( %f, %f )", arg.x, arg.y );

#define DLogBool( arg )   NSLog( @"Boolean: %@", ( arg == YES ? @"YES" : @"NO" ) )
#else
#define DLog(...)
#define DLogBool(...)
#endif

//#	define DLog(...)

#endif


//单例化一个类
#define SYNTHESIZE_SINGLETON_FOR_CLASS(classname) \
\
static classname *shared##classname = nil; \
\
+ (classname *)shared##classname \
{ \
@synchronized(self) \
{ \
if (shared##classname == nil) \
{ \
shared##classname = [[self alloc] init]; \
} \
} \
\
return shared##classname; \
} \
\
+ (id)allocWithZone:(NSZone *)zone \
{ \
@synchronized(self) \
{ \
if (shared##classname == nil) \
{ \
shared##classname = [super allocWithZone:zone]; \
return shared##classname; \
} \
} \
\
return nil; \
} \
\
- (id)copyWithZone:(NSZone *)zone \
{ \
return self; \
}

