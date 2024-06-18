# flutter_base

**Architectural template for new flutter projects.**

## Structure

<pre>
lib/
├── components/
│   ├── custom_button.dart
│   ├── custom_colorful_container.dart
│   ├── custom_loading.dart
│   ├── custom_modal_bottom_sheet.dart
│   ├── custom_profile_picture.dart
│   └── custom_text_form_field.dart
├── features/
│   ├── auth/
│   │   ├── sign_in/
│   │   │   └── sign_in_view.dart
│   │   └── sign_up/
│   │       └── sign_up_view.dart
│   ├── base/
│   │   └── base_view.dart
│   ├── error/
│   │   └── error_view.dart
│   ├── profile/
│   │   └── profile_view.dart
│   ├── splash/
│   │   └── splash_view.dart
│   └── welcome/
│       └── welcome_view.dart
├── products/
│   ├── constants/
│   │   ├── app_constants.dart
│   │   ├── border_constants.dart
│   │   ├── color_constants.dart
│   │   ├── icon_constants.dart
│   │   ├── image_constants.dart
│   │   ├── padding_constants.dart
│   │   ├── radius_constants.dart
│   │   └── size_constants.dart
│   ├── extensions/
│   │   ├── size_extension.dart
│   │   └── time_extension.dart
│   ├── routes/
│   │   ├── app_routes.dart
│   │   └── route_service.dart
│   └── themes/
│       └── light_theme/
│           ├── bottom_sheet.dart
│           ├── buttons.dart
│           └── light_theme.dart
└── main.dart
</pre>