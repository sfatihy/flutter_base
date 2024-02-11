# flutter_base

**Architectural template for new flutter projects.**

## Structure

<pre>
lib/
├── components/
│   ├── custom_button.dart
│   ├── custom_colorful_container.dart
│   └── custom_text_form_field.dart
├── features/
│   ├── auth/
│   │   ├── sign_in/
│   │   │   └── sign_in_view.dart
│   │   └── sign_up/
│   │       └── sign_up_view.dart
│   ├── base/
│   │   └── base_view.dart
│   ├── splash/
│   │   └── splash_view.dart
│   └── welcome/
│       └── welcome_view.dart
├── products/
│   └── constants/
│       ├── app_constants.dart
│       ├── border_constants.dart
│       ├── color_constants.dart
│       ├── icon_constants.dart
│       ├── image_constants.dart
│       ├── padding_constants.dart
│       └── radius_constants.dart
└── main.dart
</pre>