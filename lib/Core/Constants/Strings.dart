import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> listOfOnboardingImages = [
  WhatIsAddi,
  HowToUseOnBoardingImage,
  SOSOnBoardingImage,
  ShareLocationOnBoardingImage,
  FakeCallOnBoardingImage,
  AlarmOnBoardingImage,
  TapPatternOnBoardingImage,
];

List<String> listOfTitles = [
  'What is addi?',
  'How To Use addi',
  'SOS',
  'Share Location',
  'Fake Call',
  'Alarm',
  'Tap Pattern',
];

List<String> listOfOnboardingImagesBottom = [
  loadingImage,
  loadingImage,
  SOSOnBoardingImageBottom,
  ShareLocationOnBoardingImageBottom,
  FakeCallOnBoardingImageBottom,
  AlarmOnBoardingImageBottom,
  TapPatternOnBoardingImageBottom,
];

List<Map<String, dynamic>> languageOptions = [
  {'name': 'English', 'image': USAFlagImage},
  {'name': 'French', 'image': FranceFlagImage},
  {'name': 'Spanish', 'image': SpainFlagImage},
  // Add more countries and images
];

String privacyPolicyText = '''# Addibuddy Privacy Policy

Addibuddy LTD having a registered address at 77 Cypress Road, Guildford GU1 1LU, Surrey, UK (hereinafter, referred to as “Addibuddy,” “us,” “we,” or “our”) collects certain personal data from the individual user (hereinafter, referred to as “you” or “your”) through the App Addibuddy (hereinafter, referred to as the “App”). This Privacy and Cookie Policy explains Addibuddy's procedures related to the collection and processing of your personal data through the App. Please read this Privacy and Cookie Policy carefully before using the App. If you do not agree with one or more provisions of this Privacy and Cookie Policy, please do not use the App.

## 1. Types of Personal Data Collected by Us

### 1.1 When registering an account on the App or placing an order via in-app purchases or through a donation, Addibuddy may collect the following personal data from you:
(1). Full name
(2). Physical address
(3). Country
(4). Email address
(5). Phone number
(6). Birth date
(7). User name
(8). Password
(9). Information about any transactions conducted through the App
(10). Other information that you decide to share with us.

### 1.2 When connections of yours are accepting to become your buddy and registering an account as an **Addi** buddy on the App or placing an order via in-app purchases or through a donation, Addibuddy may collect the following personal data from them:
(1). Full name
(2). Physical address
(3). Country
(4). Email address
(5). Phone number
(6). Birth date
(7). User name
(8). Password
(9). Information about any transactions conducted through the App
(10). Other information that they decide to share with us.

### 1.3 When you submit the enquiry form available on the App, we collect the following personal data from you:
1. Name
2. Email address
3. Phone number
4. Other information that you decide to share with us.

### 1.4 When you make payments through the App, your payments will be processed by our third-party payment processor like, for example, PayPal (Europe) S.à r.l. et Cie, S.C.A. having an address at 22-24 Boulevard Royal, L-2449 Luxembourg (hereinafter, referred to as the “Third-Party Payment Processor”). The Third-Party Payment Processors may collect payment information from you, which is necessary to make the payments requested by you. Please note that we DO NOT store your credit/debit card information. The Third-Party Payment Processors handle all the steps in the payment process on its website and App, including data collection and data processing.

## 2. Purposes of Personal Data Collection

### 2.1 Addibuddy adheres to the highest data protection standards and uses your personal data only for the purposes mentioned in this Privacy and Cookie Policy.

### 2.2 The personal data collected through the App is used only for the purposes for which such personal data was provided:

#### A. The formation and performance of a contract between you and Addibuddy:
- To allow you to create an account on the App
- To send you in-app purchases purchased through the App
- To contact you if there is a problem with your account
- To send you statements, invoices, and payment reminders
- To collect payments from you
- To answer your questions and inquiries regarding any order you might place.

#### B. Direct marketing purposes that fall within the scope of Addibuddy legitimate interests:
- To personalize the App for you
- To send you administrative messages regarding your use of the App
- To inform you about updates of the App
- To deal with inquiries made by you in relation to the App
- To send you information about our products and services that are similar to the App and any in-app purchases that you might decide to purchase from us.

## 3. Your Consent

### 3.1 By using the App, you are consenting to our processing of your personal data as set forth in this Privacy Policy.

### 3.2 Should we intend to:
1. Collect any sensitive data from you
2. Provide you with any marketing communication not mentioned in Section 2.2 of this Privacy and Cookie Policy
3. Use your personal and non-personal data for the purposes not indicated in this Privacy and Cookie Policy
4. Transfer your personal data to third parties not indicated in this Privacy and Cookie Policy
5. Significantly amend this Privacy and Cookie Policy

We will seek your explicit consent in advance.

## 4. Marketing Communication

### 4.1 We may issue a newsletter and other marketing communications, and by joining the App, you are allowing us to do so.

### 4.2 We will send you marketing communication, which includes promotional materials other than those mentioned in Section 2.2 of this Privacy and Cookie Policy, and newsletters. However, in each communication, we will allow you to unsubscribe through a clear button that you can press.

### 4.3 If you no longer wish to receive any marketing communication from AddiBuddy, you may opt out of receiving such information:
1. By clicking on the “unsubscribe” link contained in any of such marketing communication
2. By contacting us directly. Our contact information is indicated in Section 12 “Contact details” of this Privacy and Cookie Policy.

### 4.4 Google ads and other marketing ads will run on the app unless canceled by you via an in-app purchase available for you to purchase.

## 5. Non-Personal Data Collected by Us

### 5.1 Please note that

 we may collect non-personal data (e.g., URL addresses of websites and apps clicked to and from the App, operating systems, and browser types). Such non-personal data is completely anonymous and cannot be used to identify you in any manner. We use the collected non-personal data to further develop the App.

## 6. Protection of Personal Data

### 6.1 We use information security tools (e.g., secured networks, encryption, and anonymization) and organizational tools (e.g., limited access to your personal data) in order to protect your personal data.

### 6.2 However, please note that, due to the inherent risks of using the Internet, we cannot be liable for any destruction, loss, use, copying, modification, leakage, and falsification of personal data caused by circumstances beyond our reasonable control.

## 7. Third Party Access to Personal Data

### 7.1 Where necessary, we may disclose or transfer your personal data to third parties. Such a disclosure or transfer is limited to the situations when your personal data are required for the purposes of:
1. Provision of the information or services requested by you
2. Pursuing Addibuddy legitimate interests
3. Law enforcement purposes
4. If you provide your prior explicit consent.

### 7.2 Your personal data may be disclosed to third parties that:
1. Provide services on behalf of Addibuddy
2. Provide technical support to Addibuddy (hereinafter, collectively referred to as the “Third-Party Service Providers”). Such Third-Party Service Providers may include:
   - Payment processors. All financial transactions conducted through the App are handled through our Third-Party Payment Processor. Any personal data provided by you to our Third-Party Payment Processor will be processed by it in accordance with its privacy policy available at [PayPal Privacy Policy](https://www.paypal.com/ua/webapps/mpp/ua/legalhub-full). We kindly request you to provide your personal data to our Third-Party Payment Processor only after reviewing its privacy policy and understanding what types of personal data will be collected by our Third-Party Payment Processor.
   - Technical support providers. Such providers include hosting and data storage providers, user information logistics providers, and other parties that assist Addibuddy in operating the App and conducting its business.

### 7.3 The Third-Party Service Providers will access your personal data as a part of their partnership with Addibuddy and only if such Third-Party Service Providers agree to assure an adequate level of protection of personal data that is consistent with this Privacy and Cookie Policy.

### 7.4 Please note that some third parties may be located outside of the jurisdiction in which you reside.

### 7.5 With the exception of the cases mentioned in Section 7, your personal data will not be shared with third parties unless Addibuddy is required by law to do so.

## 8. Accessing, Correcting, and Deleting Your Personal Data

### 9.1 You have the right to access, delete, or modify your personal data processed by Addibuddy. You can do so by contacting our data protection officer. We will respond to your request as soon as possible but no later than two weeks. The contact details of our data protection officer are listed below:
   - Address: Bernard Nassif
   - Addibuddy LTD
   - 77 Cypress Road, Guildford GU1 1LU, Surrey, UK
   - Email: support@addibuddy.co.uk

### 9.2 We strive to assure that your personal data is true, accurate, up-to-date, and complete. Please update your user account on the App as soon as changes in your contact information occur.

## 10. Retention Period

### 10.1 We will keep your personal data for as long as it is necessary to provide you with the requested service.

### 10.2 If your personal data is no longer necessary for the delivery of the requested services, we will delete it immediately unless we are required by the applicable law to retain such personal data for a certain period of time (e.g., for accounting record purposes).

## 11. Transfer of Personal Data Outside of the European Union

### 11.1 We may transfer your personal data outside of the European Union only for the purposes described in this Privacy and Cookie Policy. If we do transfer your personal data outside the European Union, then we shall make every effort to ensure that your personal data is processed in accordance with this Privacy and Cookie Policy and the applicable British and European data protection laws.

## 12. Links

### 12.1 Please note that the Website may contain links to third-party websites. We hereby disclaim any liability in relation to the privacy practices of other websites.

## 13. Contact Details

### 13.1 If you have any questions, concerns, or remarks about this Privacy and Cookie Policy, please contact us:
   - By mail:
   - Addibuddy Ltd,
   - 77 Cypress Road, Guildford GU1 1LU, Surrey, UK
   - By email: support@addybuddy.co.uk

## 14. Registration as a Data Controller

### 14.1 We are registered as a data controller with the UK Information Commissioner’s Office with registration number xxxxxx.

## 15. Complaints about Handling of Personal Data

### 15.1 You have the right to submit a complaint to us about the way in which your personal data has been handled by using the contact details indicated in Section 12 “Contact details” of this Privacy and Cookie Policy.

### 15.2 After you submit such a complaint, we will send you an email within 5 business days confirming that we have received your complaint. Afterwards, we will investigate your complaint and provide you with our response within a reasonable timeframe but no later than 2 weeks.

### 15.3 If you are a resident of the European Union and you are not satisfied with the outcome of your complaint, you have the right to lodge a complaint with your local data protection authority.

## 16. Cookies

### 16.1 The Website uses cookies. A cookie is a small computer file. It typically consists of letters and numbers. When you visit a website, the website may send a cookie to your browser. Subsequently, the browser may store the cookie on your computer system. The main purpose of cookies is to allow a website to recognize the user’s device.

### 16.2 There are two types of cookies, namely, persistent cookies and session cookies. Persistent cookies remain valid until their expiration date unless deleted by the user before that date. Session cookies will be stored on a web browser and will remain valid until the moment when the browser is closed.

### 16.3 Cookies do not typically contain personal data. However, personal data stored by us may be linked to the information stored in and obtained from cookies. Web servers can use cookies to:
1. Identify and track users while they navigate through different pages on a website.
2. Identify users returning to a website.

### 16.4 Addibuddy uses both session and persistent cookies. Addibuddy uses session cookies to verify your details until you are navigating from page to page on the App. The session cookies enable you

 to avoid re-entering your details each time you enter a new page on the App. Addibuddy uses persistent cookies to recognize you as a unique user when you return to the App. As a result, you do not have to enter your login details multiple times as you move from other Apps to the App. Addibuddy will not use cookies for purposes which are not mentioned in this Privacy and Cookie Policy.

### 16.6 By using the Website, you agree to our use of cookies as described in this Privacy and Cookie Policy. If you do not agree to our use of cookies, you need to either:
1. Discontinue your use of the App
2. Set your browser to refuse cookies. Please be aware that some parts of the App may not function properly without cookies. If you would like to set your browser to refuse cookies, check your browser’s help information or visit [AboutCookies](http://www.aboutcookies.org.uk/managing-cookies) for further information.

## 17. Amendments

### 17.1 This Privacy Policy was written at the end of September 2023.

### 17.2 We reserve the right to amend this Privacy and Cookie Policy from time to time by posting an amended version on the Website. Your continued use of the Website after posting such an amended version will constitute your acknowledgment of the amendments and your consent to abide and be bound by the amended Privacy and Cookie Policy. Please regularly review this Privacy and Cookie Policy in order to be aware of new amendments.

### 17.3 For significant changes in the Privacy and Cookie Policy or where required by the applicable law, we may seek your explicit consent to the amendments.''';

String aboutUsText =
    'Hello, my name is Lleiz, and I’m very passionate about safety. I’ve been in many situations '
    'where I wished I had quicker, more accessible and discrete help. I’ve felt enraged that it '
    'felt ‘unsafe’ to walk home at night alone. I say it’s time to swap the keys between the '
    'knuckles for something safer and more reliable; that’s why we developed addi. Our team '
    'believes that everyone deserves to feel safe, whether at home, work or on the go. '
    'That\'s why addi offers a wide range of innovative tools and resources to ensure your '
    'wellbeing in any situation.\n\n'
    'Our mission is to empower individuals and communities by providing advanced safety solutions '
    'that enhance personal security, foster peace of mind and make safety accessible, intuitive '
    'and effective.\n\n'
    'In an increasingly interconnected world, we recognise the importance of staying safe, both '
    'online and offline. With the advancements of technology, we’ve been able to develop an app '
    'that could prevent many unwanted situations.\n\n'
    'Whether you\'re a parent concerned about your child\'s whereabouts, a student navigating '
    'a new city, or a professional traveling alone, addi has got you covered. With our app '
    'installed on your device, you gain access to a wide range of features designed to keep you '
    'safe in various situations';

final String safetyTipsText = '''
1. Keep family and friends updated on your whereabouts by always using **addi** app
2. Wear comfortable and practical footwear when walking alone
3. Avoid wearing headphones, or adjust the volume to remain alert and aware of your surroundings
4. Keep your keys in your hands ready to be used as soon as you get to your door or car
5. Stick to well-lit areas or densely populated streets
6. Don’t text or play on your phone as you walk. Although **addi** also has a Chat feature, we recommend not to use it unless absolutely necessary.
7. Avoid carrying valuables especially when they are visible
8. If you suspect that someone might follow you, head to places of refuge such as bars, pubs, corner shops or police stations
9. If possible, travel in a group
  ''';

List<Widget> onBoardingCenterTextWidgetList = [
  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 15.h),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'addi',
              style: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
            TextSpan(
              text:
                  ' is a personal safety app that allows friends and family to watch over your journey.\n\n',
              style: TextStyle(
                fontSize: 20.sp,
                color: whiteColor,
              ),
            ),
            TextSpan(
              text: 'Using a variety of crime preventing features enables',
              style: quickSandTextStyle(
                color: whiteColor,
                fontSize: 20.sp,
              ),
            ),
            TextSpan(
              text: ' addi',
              style: quickSandTextStyle(
                color: whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 21.sp,
              ),
            ),
            TextSpan(
              text: ' to provide you with peace of mind and safe passage.',
              style: quickSandTextStyle(
                color: whiteColor,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 50.h),
      quickSandText(
        text: 'Follow the link below for a tutorial',
        color: whiteColor,
        fontSize: 20.sp,
      ),
      SizedBox(height: 80.h),
      quickSandText(
        text: 'www.youtube.com',
        color: whiteColor,
        fontSize: 20.sp,
        textDecoration: TextDecoration.underline,
      ),
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 20.h),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text:
                  'Press and hold for a few seconds to ring Police in case you’re in trouble.\n\n',
              style: TextStyle(
                fontSize: 20.sp,
                color: whiteColor,
              ),
            ),
            TextSpan(
              text: 'addi',
              style: quickSandTextStyle(
                color: whiteColor,
                fontSize: 21.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
                  ' will start recording the audio and video of the surroundings.\n\n',
              style: quickSandTextStyle(
                color: whiteColor,
                fontSize: 20.sp,
              ),
            ),
            TextSpan(
              text: 'Please be mindful of this feature.',
              style: quickSandTextStyle(
                color: whiteColor,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 10.h),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text:
                  'To find out exactly where you are and share it with the police, simply tap the share location icon and it will display a combination of three unique words that identify your precise location.\n\n',
              style: TextStyle(
                fontSize: 20.sp,
                color: whiteColor,
              ),
            ),
            TextSpan(
              text:
                  'Your addibuddies can also see your location when they’re tracking you.',
              style: quickSandTextStyle(
                color: whiteColor,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 10.h),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text:
                  'This allows you to schedule a phone call that will show up on your screen to appear as if someone is calling you.\n\n',
              style: TextStyle(
                fontSize: 20.sp,
                color: whiteColor,
              ),
            ),
            TextSpan(
              text:
                  'Scheduled time by default is set at 1 minute. You can personalise it in settings under Fake Call.',
              style: quickSandTextStyle(
                color: whiteColor,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Once pressed, ',
              style: TextStyle(
                fontSize: 19.sp,
                color: whiteColor,
              ),
            ),
            TextSpan(
              text: 'addi',
              style: quickSandTextStyle(
                color: whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            TextSpan(
              text:
                  ' will automatically record audio and video of the surroundings. '
                  'At the same time, a loud siren will sound as a deterrent. A message '
                  'of help is sent to your addibuddy. \n\nAlarm can also be activated '
                  'through your voice using a code phrase when your phone is in your '
                  'pocket or handbag. Alarm will also be activated if you fail to tap '
                  'our pattern twice. (Cancel alarm by pressing the stop button)',
              style: quickSandTextStyle(
                color: whiteColor,
                fontSize: 19.sp,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Tap pattern is a unique pattern set by you that you need '
                  'to enter every once in a while to keep the app active. If '
                  'you fail to enter your pattern TWICE, ',
              style: TextStyle(
                fontSize: 20.sp,
                color: whiteColor,
              ),
            ),
            TextSpan(
              text: 'addi',
              style: quickSandTextStyle(
                color: whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 21.sp,
              ),
            ),
            TextSpan(
              text: ' will activate a loud siren to deter a potential phone '
                  'theft or attack\n\n',
              style: quickSandTextStyle(
                color: whiteColor,
                fontSize: 20.sp,
              ),
            ),
            TextSpan(
              text: 'It will also start live streaming video and audio of the '
                  'surroundings and save it to retrieve later',
              style: quickSandTextStyle(
                color: whiteColor,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
];
