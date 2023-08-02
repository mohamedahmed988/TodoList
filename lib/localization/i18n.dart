import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class S implements WidgetsLocalizations {
  const S();

  static S? current;

  static const GeneratedLocalizationsDelegate delegate =
  GeneratedLocalizationsDelegate();


  String get enter_verification_code => "Enter Verification Code";

  String get verify => "Verify";

  String get new_scan => "New Evaluation";

  String get types => "Types";
  String get count => "Count";

  String get construction_name => "Construction Name";

  String get slaughter_name => "Slaughter Name";

  String get scan_qr_code => "Scan QR Code";

  String get search => "Search";

  String get selectVideo => "Select video";

  String get yourVideoReady => " Video is ready";

  String get takeVideo => "Take video";

  String get reTakeVideo => "retake video";

  String get addVideo => "Add video";

  String get skip => "تخطــــي";

  String get visitData => "تاريخ الزيــارة:";

  String get stationName => "اسم المحطــــة:";





  String get progressTasks => "مهام مجدولة";
  String get completedTasks => "مهام منجزة";
  String get pendingTasks => "مهام معادة";
  String get canceledTasks => "مهام ملغاه";
  String get observedViolations=> "مخالفات مرصودة";

  String get statistics => "الإحصائيات";

  String get account => "Account";

  String get value => "value";

  String get enterValue => "Enter value";

  String get inspection => "تفتيش";
  String get inspector=> "Inspector";
  String get date=> "Date";


  String get previous => "السابق";

  String get histories => "سجلات التفتيش";

  String get noHistory => "لا توجد سجلات تفتيش";

  String get idImage => "ارفق صورة الهوية";

  String get pleaseSignature => "من فضلك قم بالتوقيع";

  String get answerQuestions => "من فضلك اجب عن جميع الاسئلة الاجبارية";

  String get updateTasks => "تحديث المهام";

  String get noQuestions => "لا توجد أسئلة";







  static S? of(BuildContext context) => Localizations.of<S>(context, S);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get appTitle => "Pixa";

  String get english => "ENGLISH";

  String get arabic => "العربيه";

  String get create_account => "Create Account";

  String get create_new_account => "Create New Account";

  String get select_address => "Select  Address";

  String get address_selected => "Address Select";

  String get already_have_account => "Already Have Account ?";

  String get save =>"Save";
  String get save2 =>"Save";

  String get order_history =>"Order History";

  String get select_action =>"Select Action";
  String get update =>"Update";
  String get rate =>"Rate";
  String get Address =>"Address :";
  String get OrderStatus => "Order Status :";
  String get OrderDate => "Order Date :";

  String get Status => " Status";
  String get OrderNumber => "Order Number :";

  String get OrderDetails => "Order Details";

  String get timeFrom => "Time From";

  String get timeTo => "Time To";

  String get SelectWorkingTime => "Select Working Time";

  String get addOrder => "Add Order";

  String get signUp => "Sign Up";


  String get chooseLanguage => "Choose Language";

  String get welcomeBack => "Welcome back";

  String get loginTo => "Log in to your existant account of Pixa";

  String get name => "Name";

  String get enterName => "Enter User Name";

  String get phoneHint => "Phone";

  String get enterPhone => "Enter Phone";
  String get enterPhoneoremail => "Email";

  String get user_name => "User Name";


  String get password => "Password";

  String get enterPassword => "Enter password";

  String get selectCity => "City";

  String get selectRegion => " Region";

  String get login => "Login";

  String get forgotPassword => "Forgot password?";

  String get rememberMe => "remember Me";

  String get donotHaveAccount => "Don't have an account?";

  String get signup => "Sign up";

  String get internetError => "Check your internet connection";

  String get tryAgain => "Try again";

  get ok => "Ok";

  String get enterValidCode => "Enter valid code";

  String get resetPassword => "Reset password";

  String get enterYourCode => "Enter code";

  String get incorrectCode => "incorrect code";

  String get reset => "Reset";

  String get resendCode => "Resend code";

  String get enterYourEmail => "Enter your email or Phone to sent code";
  String get Email => "Email Or Phone";

  String get sendCode => "Send code";

  String get passwordsNotIdentical => "Two passwords aren't identical";

  String get done => "Done";

  String get agree => "Agree";
  String get cancel => "Cancel";

  String get enterNewPassword => "Enter new Password";

  String get confirmPassword => "Confirm password";

  String get selectContractType => "Select Contract ";

  String get contractType => "select contract";

  String get addDevice => "Add device";

  String get problemDescription => "Problem description";

  String get selectDevice => "Select device: ";
  String get selectDev => "Select device";

  String get next => "Next";

  String get enterOrderDevicesData => "Enter data of device: ";

  String get selectDeviceService => "Select service of device: ";

  String get selectContract => "Select contract";

  String get enterCountForDeviceNo => "Enter count for Device No: ";

  String get pleaseAttach => "Please attach image";

  String get yourPhotoReady => "Image ready for upload";

  String get takePhoto => "Take photo";

  String get upload => "Upload";

  String get oneOrMore => "One or more";

  String get onlyOne => "Only one";


  String get reTakePhoto => "Re take image";

  String get selectImage => "Select image";
  String get select => "Select";


  String get selectService => "Select service";

  String get locationSelected => "Location selected";
  String get selectLocation => "Select location";

  String get enterValidPhone => "Phone number should be 10 numbers";

  String get enterValidPassword => "Password should be 8 characters or more containing at least one capital character and one small character";

  String get selectProfileImage => "Select profile image";

  String get enterValidName => "Enter valid name";
  String get enterValidEmail=> "Enter valid email";
  String get enterValidCommerical => "Enter valid commercial Registry";
  String get enterValidAgricultural => "Enter valid Agricultural Registry";

  String get enterValidPhoneOFOrganization => "Enter valid Phone";

  String get myOrders => "My Orders";

  String get more => "More";

  String get noTasks => "No Tasks exist";

  String get haveContract => "Do you have a Contract?";

  String get no => "No";

  String get yes => "Yes";
  String get violations => "Violations";
  String get violations2 => "Violations";
  String get enterPhoneoremail1 => "Please enter the phone number or email associated with your account.";


  String get contractNo => "Contract number ";

  String get enterProblemDescription => "Enter problem description in device: ";
  String get attachImage => "Attach image for problem in device: ";

  String get addNewOrder => "New order";
  String  get enter_address => "Enter address";
  String  get address => "Address :";

  String  get Devices => "Devices : ";
  String  get select_search_method => "Select Search Method ";

  String  get enter_bill_number => "Enter Bill Number ";
  String  get bill_number => " Bill Number ";
  String  get slaughter_code => " Slaughter Code";
  String  get user_code => " User name";
  String  get enter_slaughter_code => "Please Enter Valid Slaughter Code";
  String  get bill_date => "Bill Date";


  String get selectAction => "Select Action";

  String get selectAnimalType => "Select animal type";

  String get selectPart => "Select part";

  String get selectActionOnPart => "Select action";

  String get selectedAction => "Selected action: ";

  String get selectActionFrom => "Select action";

  String get addImages => "Add images: ";

  String get camera => "Camera";

  String get gallery => "Gallery";

  String get send => "Send";

  String get selectEpidemic => 'Select epidemic';
  String get epidemicType => 'Epidemic type: ';

  String get reportAdded => "Report added successfully";

  String get selectImageForPart => "Select image";
  String get changePasswordHint => "Please change Your password";
  String get newPassword => "New Password";
  String get change => "Change";
  String get gas_evaluation_system => "نظام تقييم محطات الوقود";
  String get gas_evaluation_one => "Gas";
  String get gas_evaluation_two => "Evaluation System";
  String get welcome_to => "مرحبا بك في تطبيق نظام";
  String get gas_evalaution_three => "تقييم محطات الوقود";
  String get select_language => "Please Select Language";

  String get select_participated_member => "Select Participated Member";
  String get select_station => "Select Station";
  String get new_evaluation => "New Evaluation";
  String get change_language => "Change Language";
  String get log_out => "Log Out";
  String get profile => "My Profile";
  String get change_password => "Change Password";
  String get current_password => "Current Password";
  String get pending_evaluation => "Pending Evaluation";
  String get noVists => "No Visits";
  String get sync_date => "Sync Data";
  String get saveAndSyncData => "Save and Sync Data";

  String get saved_rating_numbers => "ُEvaluations Count";
  String get no_evaluations => "ُNo Evaluations";
  String get saved_evalution => "Evalaution saved number";
  String get restorePassword => "Restore Password";
  String get code_not_sent => "Code Not Sent ?";
  String get tasks => "Tasks";

  String get planned_tasks => "Planned Tasks";
  String get random_tasks => "Random Tasks";
  String get pending_tasks => "Repeated Tasks";
  String get organization_info => "Organization Info";
  String get brand_number => "Brand Number";
  String get license_number => "License Number";
  String get end_date => "End Date";

  String get owner_info => "Owner Info";
  String get owner_name => "Owner Name";
  String get phone => "Phone";
  String get start_tour => "Start Tour";
  String get tours_records => "Tours Records";
  String get signature => "Signature";
  String get signatureOfOwner => "Signature of the owner";
  String get owner => "Organization owner";

  String get enter_identity => "Enter Identity";

  String get site_description => "Description";
  String get signature_agree => "Signature Agree";
  String get signature_dis_agree => "DisAgree";
  String get identity_photo => "Identity Photo";

  String get ImageSelected => "Image Selected";
  String get FromTheDateOf => "From the date of";
  String get ToDate => "To  Date";

  String get organization_code => "Organization Code";
  String get organization => "Organization";


  String get organization_name => "Organization Name";

  String get commercialRegistry => "commercial Registry";

  String get organizationMobile => "Organization Phone Number";

  String get category => "Category";
  String get environmental_record => "Environmental record";
  String get agricultureRecord => "Agricultural record";

  String get select_district => "District";
  String get validAr  => "Text must be in arabic";

  String get latitude => "Latitude";

  String get longtitude => "Longitude";
  String get select_main_activity => "Main Activity";
  String get select_sub_activity => "Sub Activity";
  String get select_sub_sub_activity => "Activity";
  String get organization_status => "Organization Status";
  String get notes => "Notes";
  String get saved_locally_successfully => "Saved Locally successfully ";
  String get distribution_loaded => "Distributions Locally successfully ";
  String get actions_presentation => "Actions Loading";

  String get read_one => "Reading One";
  String get read_two => "Reading Two";
  String get read => "Reading";
  String get first => "First";
  String get second => "Second";
  String get third => "Third";
  String get pleaseUpdateCategory => "Please update the category";
  String get exist => "Exist";
  String get not_exist => "Not exist";
  String get comerricalDetails => "Record Details";
  String get licenseDetails => "License Details";
  String get crName => "Trade Name";
  String get crNumber => "License Number";
  String get crEntityNumber => "Entity Number";
  String get crMainNumber => "Main Number";
  String get issueDate => "Issue Date";
  String get expiryDate => "Expiry Date";
  String get businessType => "Business Type";
  String get fiscalYear => "Fiscal Year";
  String get status => "Status";
  String get cancellation => "Cancellation";
  String get location => "Location";
  String get company => "Company";
  String get activities => "Activities";
  String get mainInspector => "Main Inspector";
  String get assistantInspector => "Assistant Inspector";
  String get appVersion => "App Version : ";
  String get editActivity => "Edit Activity";
  String get organizationDataWillBeDeleted => "Attention : Visit data of this organization Will be deleted";
  String get allDataWillBeDeleted => "Attention : All app data Will be deleted";

  String get data_updated => "Data updated successfully";
  String get data_deleted => "Data delted successfully";
  String get addOrganization => "Add Organization";
  String get searchForOrganization => "Search about Organization";
  String get requestInspect => "Request Inspection";
  String get noSearchResult => "There is no search  results";

  String get attach_a_file => "Attach a file";
  String get gallery1 => "Photo Gallery";
  String get request_holiday => "Holiday Request";
  String get mainCategory => "Main Category";
  String get subCategory => "Sub Category";
  String get selections => "Selections";
  String get addFreeViolation => "Add Free Violation";
  String get correctFreeViolation => "Correct Violation";
  String get addViolation => "Add Violation";
  String get ViolationType => "Violation Type";
  String get end => "End";
  String get start => "Start";
  String get sync => "Sync";
  String get new_account => "New Account";
  String get total_register => "Total_register";
  String get manualData => "Manual Data";
  String get sourceOfRubble => "Source of rubble";
  String get siteOwnership => "Site ownership";
  String get rubbleClassification=> "Rubble classification";
  String get rubbleQuantity=> "The quantity of rubble according to the surveying of the site";
  String get siteCoordinates => "Site Coordinates";
  String get pleaseSelectLocation => "Please select the location by placing at least four points on the map";
  String get backfieldData => "Backfield data";
  String get siteSourceType => "Site Source Type";
  String get observerNotes => "Observer notes";
  String get sourceRubbleNote => "Source rubble notes";
  String get mapText1 => "The coordinates of the site of the ruins";
  String get mapText2 => "Please select the location by placing at least four points on the map";
  String get determineResponsibility => "Determine responsibility";
  String get resultProblems => "Resulting problems";
  String get environmentalProblems => "Environmental problems";
  String get priority => "Priority";
  String get TYPE => "type";
  String get annual => "annual";
  String get normal => "normal'";
  String get emergency => "emergency";
  String get mychoice => "my choice";
  String get reason => "the reason";
  String get attachments => "Attachments";
  String get addPhotoOrVideo => "Add photo or video";
  String get violationLocationClassificationSelect => "Classification of violation location";
  String get quantity1 => "Estimated quantity of rubble volume in cubic metres";
  String get quantity2 => "Quantity of the rubble according to survey of site";
  String get mustSelectUntilLastBranch => "Select rubble classifications until the last branch";

  @override
  // TODO: implement reorderItemDown
  String get reorderItemDown => throw UnimplementedError();

  @override
  // TODO: implement reorderItemLeft
  String get reorderItemLeft => throw UnimplementedError();

  @override
  // TODO: implement reorderItemRight
  String get reorderItemRight => throw UnimplementedError();

  @override
  // TODO: implement reorderItemToEnd
  String get reorderItemToEnd => throw UnimplementedError();

  @override
  // TODO: implement reorderItemToStart
  String get reorderItemToStart => throw UnimplementedError();

  @override
  // TODO: implement reorderItemUp
  String get reorderItemUp => throw UnimplementedError();





}

class $ar extends S {
  const $ar();
  String get enter_verification_code => " ادخل كود التحقق الذي تم ارساله";

  String get appTitle => "بيكسا";
  String get mychoice => "اختياري";
  String get TYPE => "النوع";
  String get construction_name => "اسم المنشأة";
  String get slaughter_name => "اسم المسلخ";
  String get types => "الأنواع";
  String get count => "العدد";
  String get reason => "السبب";
  String get new_scan => "تقييم جديد";

  String get english => "ENGLISH";
  String get emergency => "طارئ'";
  String get normal => "عادي'";
  String get annual => "سنوية";

  String get arabic => "العربية";

  String get violations => "المخالفات";
  String get violations2 => "مخالفات";
  String get FromTheDateOf => "من  تاريخ";
  String get ToDate => "الي  تاريخ";


  String get create_account => "تسجيل حساب";

  String get create_new_account => "تسجيل حساب حديد";

  String get select_address => "اختر العنوان";

  String get address_selected => "تم إختيار العنوان";

  String get already_have_account => "لديك حساب؟";

  String get save =>"حفظ التغييرات";
  String get save2 =>"حفظ";

  String get order_history =>"طلباتي";

  String get select_action =>"اختر الإجراء";
  String get update =>"تحديث";
  String get rate =>"تقييم الطلب";
  String get Address =>"العنوان: ";
  String get OrderStatus => "حالة الطلب : ";
  String get OrderDate => "تاريخ الطلب : ";

  String get Status => " الحالة";
  String get OrderNumber => "رقم الطلب";

  String get OrderDetails => "تفاصيل الطلب";

  String get timeFrom => "من";

  String get timeTo => "إلي";

  String get SelectWorkingTime => "اختر موعد العمل";

  String get addOrder => "أضف الطلب";
  String get addNewOrder => "طلب جديد";

  String get signUp => "تسجيل";

  String get select => "إختر";

  String get chooseLanguage => "اختر اللغة";

  String get welcomeBack => "مرجباً بك";

  String get loginTo => "قم بتسجيل الدخول إلي حسابك";

  String get name => "الاسم";

  String get enterPhoneoremail => "البريد الإلكتروني";
  String get enterPhoneoremail1 => "برجاء ادخال رقم الهاتف أو البريد الإلكتروني المربوط بحسابك";

  String get enterName => "ادخل اسم المستخدم";

  String get phoneHint => "رقم الجوال";

  String get enterPhone => "ادخل رقم الجوال";

  String get user_name => "اسم المستخدم";

  String get enterEmail => "ادخل البريد الإلكتروني";

  String get password => "كلمة المرور";
  String get current_password => "كلمة المرور الحالية";

  String get enterPassword => "ادخل كلمة المرور";

  String get selectCity => " المدينة";
  String get selectRegion => " المنطقة";

  String get login => "تسجيل الدخول";

  String get forgotPassword => "نسيت كلمة المرور؟";

  String get rememberMe => "تذكرني";

  String get donotHaveAccount => "ليس لديك حساب؟";

  String get signup => "تسجيل";

  String get internetError => "تأكد من إتصالك بالانترنت";

  String get tryAgain => "حاول مرة اخري";

  get ok => "حسناً";

  String get enterValidCode => "ادخل كود صحيح";

  String get resetPassword => "إعادة تعيين كلمة المرور";

  String get enterYourCode => "ادخل الكود";

  String get incorrectCode => "الكود غير صحيح";

  String get reset => "إعادة تعيين";

  String get resendCode => "إعد إرسال الكود";

  String get enterYourEmail => "ادخل البريد الإلكتروني أو الجوال المسجل لإرسال كود التحقق";
  String get Email => "الايميل أو رقم الجوال";

  String get sendCode => "ارسل الكود";

  String get passwordsNotIdentical => "كلمتي المرور غير متتطابقتين";

  String get done => "تم";

  String get enterNewPassword => "ادخل كلمة المرور الجديدة";

  String get confirmPassword => "تأكيد كلمة المرور";

  String get selectContractType => "اختر العقد";

  String get contractType => "اختر العقد";

  String get addDevice => "اضف جهاز";

  String get problemDescription => "وصف المشكة";

  String get selectDevice => "اختر الجهاز: ";
  String get selectDev => "اختر الجهاز";


  String get next => "التالي";

  String get enterOrderDevicesData => "ادخل تفاصيل الجهاز: ";

  String get selectDeviceService => "اختر الخدمة الخاصة بالجهاز: ";

  String get selectContract => "اختر العقد";

  String get enterCountForDeviceNo => "ادخل العدد للجهاز: ";

  String get pleaseAttach => "قم بإرفاق صورة";

  String get yourPhotoReady => "الصورة جاهزة للرفع";

  String get takePhoto => "التقط صورة";

  String get upload => "تحميل";

  String get reTakePhoto => "اعد إلتقاط الصورة";

  String get selectImage => "اختر الصورة";


  String get selectService => "اختر الخدمة";

  String get locationSelected => "تم إختيار الموقع";
  String get selectLocation => "اختر الموقع";

  String get enterValidPhone => "رقم الجوال يكون ان يكون ١٠ ارقام";

  String get enterValidPassword => "كلمة المرور لابد ان تكون ٨ حروف علي الأقل وان تحتوي عل الآقل علي حرف صغير وحرف كبير";

  String get selectProfileImage => "اختر صورة الملف الشخصي";

  String get enterValidName => "ادخل اسم صحيح";
  String get enterValidEmail=> "ادخل بريد إلكتروني صحيح";
  String get enterValidCommerical => "أدخل رقم السجل";
  String get enterValidAgricultural => "أدخل السجل الزراعي";

  String get enterValidPhoneOFOrganization => "أدخل رقم هاتف المنشأة";

  String get first => "الأولى";
  String get second => "الثانية";
  String get third => "الثالثة";
  String get pleaseUpdateCategory => "نرجو تحديث الفئة";



  String get myOrders => "طلباتي";

  String get more => "المزيد";

  String get noOrders => "لا توجد مهام";

  String get haveContract => "هل لديك عقد مسبق؟";

  String get no => "لا";

  String get yes => "نعم";

  String get contractNo => "العقد رقم ";

  String get enterProblemDescription => "ادخل وصف المشكلة للجهاز: ";
  String get attachImage => "قم بإرفاق صورة للمشكلة الخاصة بالجهاز: ";
  String  get enter_address => "ادخل العنوان";
  String  get address => "العنوان :";
  String  get Devices => "الأجهزة :";
  String  get select_search_method => "اختيار طريقة البحث";
  String  get enter_bill_number => "قم بادخال رقم الفاتورة";
  String  get bill_number => "رقم الفاتوره";
  String get search => "بحث";
  String get scan_qr_code => "أو قم بعمل مسح لل QR Code";
  String  get slaughter_code => " كود المسلخ";
  String  get user_code => "اسم المستخدم";
  String  get enter_slaughter_code => "قم بادخال كود مسلخ صالح";
  String  get bill_date => "تاريخ الفاتورة";

  String get selectAction => "اختر الإجراء على الجزء المصاب";

  String get selectAnimalType => "اختر نوع الذبيحة";

  String get selectPart => "اختر الجزء المصاب";

  String get selectActionOnPart => "اختر الإجراء علي الجزء المصاب";

  String get selectedAction => "الإجراء المتخذ :";

  String get selectActionFrom => "اختـر من دليل الإجراءات";

  String get addImages => "إضافة الصور :";

  String get camera => "الكـــاميــــــــــرا";

  String get gallery => "من الأستوديو";

  String get send => "إرسال";

  String get selectEpidemic => 'اختر الوباء';
  String get epidemicType => 'نوع الوباء: ';

  String get reportAdded => "تم إضافة البلاغ بنجاح";

  String get selectImageForPart => "اختر صورة للجزء المصاب";
  String get verify => "تحقق";

  String get changePasswordHint => "من فضلك قم بتغيير كلمة المرور الخاصة بك";
  String get newPassword => "كلمة المرور الجديدة";
  String get change => "تغيير";
  String get select_participated_member => "اختر العضو المشارك (غير الزامي)";
  String get select_station => "اختر المحطة";
  String get new_evaluation => "تقييم جديد";
  String get change_language => "تغيير اللغة";
  String get log_out => "تسجيل الخروج";
  String get select_language => "قم باختيار اللفه المفضله لك";
  String get gas_evaluation_system => "نظام تقييم محطات الوقود";
  String get gas_evaluation_one => "نظام تقييم";
  String get gas_evaluation_two => "محطات الوقود";
  String get profile => "حسابي";
  String get change_password => "تغيير كلمة المرور";
  String get pending_evaluation => "التقييمات المعلقة";
  String get noVists => "لا توجد زيارات";
  String get sync_date => "مزامنة ";
  String get saveAndSyncData => "حفظ ومزامنة";
  String get saved_rating_numbers => "عدد التقييمات ";
  String get no_evaluations => "ُلا يوجد تقييمات للمزامنة";
  String get saved_evalution => "تم حفظ تقييم";

  String get restorePassword => "استعادة كلمة المرور";

  String get code_not_sent => " لم يتم ارسال الكود بعد؟ ";
  String get tasks => "المهام";
  String get planned_tasks => "المهام المجدولة";
  String get random_tasks => "المهام العشوائية";
  String get pending_tasks => "المهام المعادة";
  String get organization_info => "معلومات المنشأة";
  String get brand_number => "رقم السجل التجاري";
  String get license_number => "رقم الترخيص";

  String get end_date => "تاريخ الانتهاء";
  String get owner_info => "معلومات المالك";
  String get owner_name => "اسم المالك";
  String get phone => "رقم التواصل";
  String get start_tour => "بدأ التفتيش";
  String get tours_records => "سجلات التفتيش";

  String get signature => "التوقيع";
  String get signatureOfOwner => "توقيع صاحب المنشأة";
  String get owner => "صاحب المنشأة";

  String get enter_identity => "ادخل رقم الهوية";

  String get site_description => "صفة الموقع";

  String get signature_agree => "موافقة توقيع";
  String get signature_dis_agree => "رفض توقيع";
  String get identity_photo => "صورة الهوية";
  String get noTasks => "لا توجد مهام";
  String get ImageSelected => "تم اختيار الصورة";
  String get organization_code => "كود المنشأة";
  String get organization_name => "اسم المنشأة";
  String get organization => "المنشأة";

  String get commercialRegistry => "رقم السجل";
  String get organizationMobile => "رقم هاتف المنشأة";
  String get category => "الفئة";

  String get select_district => " الحي";
  String get validAr => " يجب أن يكون النص باللغة العربية ";

  String get latitude => "خط طول";

  String get longtitude => "دائرة عرض";

  String get select_main_activity => "النشاط الرئيسي";
  String get select_sub_activity => "النشاط الفرعي";
  String get select_sub_sub_activity => "النشاط";

  String get organization_status => "حالة المنشأة";

  String get saved_locally_successfully => "تم الحفظ علي الجهاز اضعط زر مزامنه للارسال للسرفر";

  String get notes => "ملاحظات";
  String get distribution_loaded => "تمت اعادة تحميل الزيارات";

  String get actions_presentation => "سيتم عرض النماذج";

  String get read_one => "القراءة الأولي";
  String get read_two => "القراءة الثانيه";
  String get read => "القراءة";
  String get inspector=> "المفتش";
  String get date=> "التاريخ";
  String get value => "القيمة";
  String get environmental_record => "السجل البيئي";
  String get agricultureRecord => "السجل الزراعي";

  String get exist => "يوجد";
  String get not_exist => "لا يوجد";
  String get licenseDetails => "تفاصيل الرخصة";
  String get comerricalDetails => "تفاصيل السجل";

  String get crName => "الاسم التجاري";
  String get crNumber => "رقم السجل التجاري";

  String get crEntityNumber => "رقم الكيان";
  String get crMainNumber => "رقم السجل الرئيسي";
  String get issueDate => "تاريخ انشاء السجل";
  String get expiryDate => "تاريخ انتهاء السجل";
  String get businessType => "نوع العمل";
  String get fiscalYear => "السنة المالية";
  String get status => "حالة السجل";
  String get cancellation => "الإلغاء";
  String get location => "الموقع";
  String get company => "الشركة";
  String get activities => "الأنشطة";
  String get mainInspector => "المفتش الرئيسي";
  String get assistantInspector => "مفتش مرافق";
  String get appVersion => "رقم الإصدار : ";
  String get editActivity => "تحديث النشاط";
  String get agree => "موافق";
  String get cancel => "إلغاء";
  String get organizationDataWillBeDeleted => "حذف كل بيانات الزيارة لهذة المنشأة";
  String get allDataWillBeDeleted => "إنتبه : سيتم حذف كل المهام الخاصة بك على التطبيق";
  String get data_updated => "تم تحديث البيانات";
  String get data_deleted => "تم حذف البيانات";
  String get addOrganization => "إضافة منشأة";
  String get searchForOrganization => "بحث عن منشأة";
  String get requestInspect => "طلب تفتيش";
  String get noSearchResult => "لا يوجد نتائج للبحث";
  String get oneOrMore => "ملف أو أكثر";
  String get onlyOne => "ملف واحد";
  String get attach_a_file => "أرفق ملف";
  String get gallery1 => "معرض الصور";
  String get request_holiday => "طلب أجازة";
  String get mainCategory => "التصنيف الرئيسي";
  String get subCategory => "التصنيف الفرعي";
  String get selections => "المحددات";
  String get addFreeViolation => "إضافة مخالفة حرة";
  String get ViolationType => "نوع المخالفة";
  String get addViolation => "إضافة مخالفة";

  String get end => "إنهاء";
  String get start => "بدء";
  String get correctFreeViolation => "تصحيح مخالفة";


  String get total_register => "العدد المسجل";
  String get new_account => "تسجيل جديد";
  String get sync => "مزامنة";

  String get manualData => "بيانات يدوية";
  String get sourceOfRubble => "مصدر الأنقاض";
  String get siteOwnership => "ملكية الموقع";
  String get rubbleClassification=> "تصنيف الأنقاض";
  String get rubbleQuantity=> "كمية الأنقاض طبقا للرفع المساحي للموقع";
  String get siteCoordinates => "احداثيات موقع الأنقاض";
  String get pleaseSelectLocation => "برجاء تحديد الموقع من خلال وضع اربع نقاط على الأقل على الخريطة";
  String get backfieldData => "بيانات الردمية";
  String get siteSourceType => "نوع الموقع";
  String get observerNotes => "ملاحظات الراصد";
  String get sourceRubbleNote => "ملاحظات مصدر الأنقاض";

  String get mapText1 => "احداثيات موقع الأنقاض";
  String get mapText2 => "برجاء تحديد الموقع من خلال وضع اربع نقاط على الأقل على الخريطة";
  String get determineResponsibility => "تحديد المسئولية";
  String get resultProblems => "المشاكل الناتجة";
  String get environmentalProblems => "المشاكل البيئية";
  String get priority => "الاولوية";
  String get attachments => "المرفقات";
  String get addPhotoOrVideo => "إضافة صور / فيديو";
  String get takeVideo => "التقط فيديو";
  String get violationLocationClassificationSelect => "تصنيف موقع المخلفات";
  String get quantity1 => "الكمية التقديرية لحجم الأنقاض بالمتر المكعب";
  String get quantity2 => "كمية الأنقاض طبقا للرفع المساحي للموقع";
  String get mustSelectUntilLastBranch => "إختر تصنيف الأنقاض حتى أخر فرع";



}

class $en extends S {
  const $en();
}


class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("ar", ""),
      Locale("en", ""),
    ];
  }

  LocaleListResolutionCallback listResolution(
      {Locale? fallback, bool withCountry = true}) {
    return (List<Locale>? locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback!, supported, withCountry);
      }
    };
  }

  LocaleResolutionCallback resolution(
      {Locale? fallback, bool withCountry = true}) {
    return (Locale? locale, Iterable<Locale> supported) {
      return _resolve(locale!, fallback!, supported, withCountry);
    };
  }

  @override
  Future<S> load(Locale locale) {
    final String? lang = getLang(locale);
    if (lang != null) {
      switch (lang) {
        case "ar":
          S.current = const $ar();
          return SynchronousFuture<S>(S.current!);
        case "en":
          S.current = const $en();
          return SynchronousFuture<S>(S.current!);
        default:
        // NO-OP.
      }
    }
    S.current = const S();
    return SynchronousFuture<S>(S.current!);
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale, true);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;

  ///
  /// Internal method to resolve a locale from a list of locales.
  ///
  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported,
      bool withCountry) {
    if (locale == null || !_isSupported(locale, withCountry)) {
      return fallback;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback;
      return fallbackLocale;
    }
  }

  ///
  /// Returns true if the specified locale is supported, false otherwise.
  ///
  bool _isSupported(Locale locale, bool withCountry) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        // Language must always match both locales.
        if (supportedLocale.languageCode != locale.languageCode) {
          continue;
        }

        // If country code matches, return this locale.
        if (supportedLocale.countryCode == locale.countryCode) {
          return true;
        }

        // If no country requirement is requested, check if this locale has no country.
        if (true != withCountry &&
            (supportedLocale.countryCode == null ||
                supportedLocale.countryCode!.isEmpty)) {
          return true;
        }
      }
    }
    return false;
  }
}

String? getLang(Locale l) => l == null
    ? null
    : l.countryCode != null && l.countryCode!.isEmpty
    ? l.languageCode
    : l.toString();
