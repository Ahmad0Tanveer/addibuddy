import 'package:addibuddy/Core/Constants/Assets.dart';
import 'package:addibuddy/Core/Constants/Colors.dart';
import 'package:addibuddy/Core/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String termsAndConditionsText =
        '''These **Terms and Conditions** (hereinafter, referred to as the “Terms”) for the **Addibuddy App** (hereinafter, referred to as the “APP”) constitute a legal agreement between the user (“you”, “your”, “user”) of the App and **Addibuddy LTD** having a registered address at 77 Cypress Road, Guildford, GU1 1LU, Surrey UK (hereinafter, referred to as “Addibuddy”). By downloading, installing, and activating the App, you acknowledge that you have read the Terms and agree to be bound by them. If you do not agree to the Terms, please do not use the App. Addibuddy grants you the right to use the App only in the case that you agree to the Terms.

You must be at least 18 years old to subscribe for the Services. If you are below the legal age of 18, you may use the Services if a legal guardian subscribes on your behalf and you are at least 13 years old.

## 1. The App

### 1.1 The App

The App offers safety tools via mobile phones and other devices directly to end users through application platforms that might be useful while walking and conducting a journey between two destinations.

Standard-rated text messages are part of the Services. For example, text messages are sent when a location request is made and no internet connection is available, if the safety alarm is triggered, or when settings are synchronized between the phone and portal and no internet connection is available. 
Messaging and data rates may apply depending on the terms of your individual mobile service plan. To subscribe to the Services, you can download our apps from various app stores, deep links, etc., and follow setup instructions inside the app, or go to [www.addibuddy.com](www.addibuddy.com) for more information. To cancel a free subscription, remove the app from the phone. To cancel an in-app purchase, go to your account inside the app and change subscription in-app settings. If you have an iTunes subscription you must unsubscribe to the Services in your iTunes account. To get help, email us at [support@addibuddy.com](mailto:support@addibuddy.com).

### 1.2 In order to use the full functionality of the App, you need to register an account on the App (hereinafter, referred to as the “Account”).

### 1.3 Technical steps to conclude a sale contract.

If you would like to purchase one of our products through the Website, you need to add the selected product in your online Cart. This can be done by (1) visiting the webpage of the selected product and (2) clicking on the “Add to Cart” button. After you add the products which you would like to purchase to the Cart, you need to click on the “View Cart” section and press the “Proceed to Checkout” button. Next, you will need to log in to your Account and perform the following operations: (1) add your billing address; (2) add your shipping address; (3) select a shipping option; and (4) select a payment option. Afterwards, you will need to click on the button “Submit my order” and pay the price of the product by using the payment option selected by you. When you click on the button “Submit my order”, we will send you a confirmatory email informing you about your order. By clicking on the button “Submit my order” and receiving a confirmatory email, you conclude a sale contract in English between you and Addibuddy on the basis of these Terms. After receiving your payment, we will deliver the product(s) ordered by you.

### 1.4 The details of your specific contract will not be filed by us and, therefore, the specific contract will not be available to you. However, if you do require any information regarding your order please contact us by using the contact details mentioned in Section 22.

## 2. Prices

### 2.1 The App

The App main features are free with in-app premium subscription available for a monthly fee per month or an annual fee and another section is available for donations. The prices indicated on the App are VAT-inclusive.

### 2.2 Prices

The prices remain valid as long as they are indicated on the App.

## 3. Payments

### 3.1 Payments

You can make payments on the App by (1) PayPal ([www.paypal.com](www.paypal.com)) or (2) an acceptable credit card as listed on the APP.

### 3.2 PayPal and credit card companies

PayPal and credit card companies may collect payment information from you which will allow them to make the payments requested by you. Please note that, if you use PayPal or the credit card payment as an option we WILL NOT store your credit/debit card information. PayPal and credit card companies will handle all the steps in the payment process on their websites, including data collection and data processing. Please provide your personal information to PayPal or the credit card companies only after reviewing their privacy policy and terms of use.

### 3.3 It is your responsibility

It is your responsibility to verify that all transaction information and other details are correct. Addibuddy shall have no liability for transactions which are incorrect as a result of factors beyond Addibuddy’s control.

### 3.4 Addibuddy accepts no responsibility

Addibuddy accepts no responsibility for refusal or reversal of payments, which shall be a matter between you and the provider of payment services.

## 4. Right of withdrawal

### 4.1 Right of withdrawal

If you are a consumer (i.e. a natural person who is acting for purposes which are outside his trade, business, craft or profession), you have the right to withdraw from the sale contract within 14 days without giving any reason. The withdrawal period will expire after 14 days from the day on which you acquire the in App premium services. To exercise the right of withdrawal, you must inform Addibuddy of your decision to withdraw from the sale contract by an unequivocal statement (e.g., a letter sent by post or [e-mail](mailto:support@addibuddy.com)). You can use the following contact details to exercise your rights of withdrawal:

Addibuddy ltd
77 Cypress Road, Guildford GU1 1LU, Surrey, UK
Email: [support@addibuddy.com](mailto:support@addibuddy.com)

To meet the withdrawal deadline, it is sufficient for you to send your communication concerning your exercise of the right of withdrawal before the withdrawal period has expired.

### 4.2 Effects of withdrawal

If you withdraw from the sale contract and your withdrawal right applies as per section 4.1, we shall reimburse to you all payments received from you without undue delay and in any event not later than 14 days from the day on which we are informed about your decision to withdraw from this contract. We will carry out such reimbursement using the same means of payment as you used for the initial transaction, unless you have expressly agreed otherwise; in any event, you will not incur any fees as a result of such reimbursement.
## 5. Addibuddy’s Content

### 5.1 The App contains intellectual property materials that are owned by Addibuddy (hereinafter, referred to as “Addibudy’s Content”). Such materials include, but are not limited to, text, images, and source code. Addibudy’s Content is intellectual property of Addibuddy ltd. Addibuddy’s Content is protected by the intellectual property law of England, the United Kingdom and the applicable international intellectual property laws.

## 6. User-generated content

### 6.1 The App offers users the opportunity to make customer reviews and other materials (hereinafter, collectively referred to as “User-Generated Content”) publicly available.

### 6.2 Addibuddy wants all visitors to the App to have a friendly, interesting, and safe experience. That is why all users of the App and any contributions they make to the App must comply with the following Code of Conduct.

#### Code of Conduct

You agree not to submit any User-Generated Content or other material that:
- Violates the applicable privacy laws;
- Is an advertisement or promotion for any product or service that had not been approved in writing by Addibuddy;
- Contains malware, including, but not limited to, Trojan horses, viruses, worms, or other software that can alter, interrupt, impede, limit, or destroy the performance and/or functioning of any software, hardware, or other equipment;
- Constitutes an unfair or deceptive trade practice;
- Is false or misleading;
- Is abusive, defamatory, harassing, hateful, libelous, obscene, profane, sexually explicit, threatening, and vulgar;
- Infringes the intellectual property rights of others;
- Promotes the use of alcohol and tobacco;
- Is racially, ethnically, or otherwise objectionable in any manner;
- Is submitted by using fake email addresses;
- Promotes the use of illegal drugs or any other illegal substances;
- Constitutes spam or other abusive messaging.

Addibuddy reserves the right (but not the obligation) to edit, refuse to post, or to remove any User-Generated Content in whole or in part that Addibuddy deems to be in breach of the Code of Conduct.

### 6.3 You will be solely responsible and liable for, and will indemnify Addibuddy and its officers, directors, employees, and agents from and against any losses, expenses, liabilities, claims, costs, and damages arising from your User-Generated Content.

## 7. A license to use the App

### 7.1 Subject to the provisions in the Terms, Addibuddy grants you a personal, nonexclusive, nontransferable, non-sublicenseable, limited license to use the Website.

## 8. License restrictions

### 8.1 Unless explicitly allowed in the Terms, you may not: (i) copy the User-Generated Content and Addibuddy’s Content; (ii) distribute the User-Generated Content and Addibyddy’s Content; (iii) adapt, translate, reverse engineer, make alterations, decompile, disassemble or make derivative works based on the User-Generated Content and Addibuddy’s Content; (iv) use, rent, loan, sub-license, lease, distribute or attempt to grant other rights to the User-Generated Content and Addibyddy’s Content to third parties.

## 9. Ownership

### 9.1 All Addibuddy’s Content featured or displayed in or through the App and all trademarks, service marks and trade names of Addibuddy included therein, are intellectual property of Addibyddy, its licensors, vendors, agents and/or other content providers.

### 9.2 All User-Generated Content is owned by their respective owners and Addibuddy is not responsible in any manner for that content.

## 10. Your warranty to Addibuddy

### 10.1 You represent and warrant that: (i) you have the authority to bind yourself to these Terms; (ii) you will use the Website only for purposes that are permitted by these Terms; (iii) your use of the Website will comply with all applicable laws.

## 11. Privacy

### 11.1 By using the Website, you agree that Addibuddy may collect and process your personal information in accordance with our Privacy Policy available at [Privacy Policy](xxxxxxx).

## 12. Newsletter

### 12.1 You can subscribe to our newsletter by ticking the box “Addibuddy newsletter” on the App.
### 12.2 If you would like to unsubscribe from our newsletter, please use the unsubscribe link which is included in any newsletter submitted by Addibuddy to you.

## 13. Availability

### 13.1 Addibuddy will use reasonable efforts to make the App available at all times. However, you acknowledge that the App is provided over the Internet and so the quality and availability of the App may be affected by factors outside our reasonable control.
### 13.2 Addibuddy does not accept any responsibility for the unavailability of the App due to bandwidth problems, Wi-Fi availability, equipment failure, acts of God, or any other reason.

## 14. Links

### 14.1 The App may contain links to other websites or Apps. Addibuddy is not responsible for the content of those Apps.

## 15. Limitation of liability

### 15.1 Nothing in these Terms shall limit or exclude our liability for: (i) for fraud; (ii) for any breach of the obligations implied by applicable national laws; or (iv) any liability which cannot be excluded by law.

### 15.2 Subject to Section 15.1 of these Terms, Addibuddy will not be liable for any indirect or consequential loss or damage of any kind whatsoever arising and whether caused by tort (including negligence), breach of the Terms, or otherwise. Addibuddy's maximum aggregate liability under the Terms whether in tort (including negligence) or otherwise shall in no circumstances exceed the amount payable by the customer to Addibuddy in relation to the product(s) in question.

### 15.3 Addibuddy takes no responsibility for the proper functioning of any networks or servers, or any communications that occur over such networks and servers. Addibuddy makes no representations or warranties as to the interoperability of the Services with any network or servers. You acknowledge that Addibuddy shall have no liability for any errors occurring on your networks or servers as a result of your use of the Services. 

### 15.4 THE SERVICES AND ADDIBUDDY SOFTWARE WEBSITES ARE PROVIDED ON AN “AS IS” AND “AS AVAILABLE” BASIS WITHOUT WARRANTY OR CONDITION OF ANY KIND, EXPRESS OR IMPLIED. ADDIBUDDY AND/OR ITS SUPPLIERS HEREBY DISCLAIM ALL WARRANTIES AND CONDITIONS WITH RESPECT TO THE SERVICES AND ADDIBUDDY WEBSITES AND APPS, INCLUDING ALL IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE, NON-INFRINGEMENT, AND ABSENCE OF ERRORS, BUGS, VIRUSES, AND/OR MECHANISMS WHICH MAY DISABLE, DAMAGE OR INTERFERE WITH COMPUTER SYSTEMS OR NETWORKS. YOU ACKNOWLEDGE AND AGREE THAT THE INFORMATION, SOFTWARE, APPLICATIONS, PRODUCTS, AND SERVICES INCLUDED IN OR AVAILABLE THROUGH THE SERVICES AND ADDIBUDDY SOFTWARE WEBSITES MAY INCLUDE INACCURACIES OR TYPOGRAPHICAL ERRORS AND THAT ADDIBUDDY SHALL HAVE NO LIABILITY FOR SUCH ERRORS. YOU ACKNOWLEDGE AND AGREE THAT ADDIBUDDY AND/OR ITS SUPPLIERS MAY MAKE IMPROVEMENTS AND/OR CHANGES IN THE SERVICES AND ON THE MOBILE SOFTWARE WEBSITES AT ANY TIME WITHOUT NOTICE OR LIABILITY TO YOU. INFORMATION YOU MAY RECEIVE VIA THE SERVICES OR ADDIBUDDY WEBSITES AND APPS MAY NOT BE RELIED UPON BY YOU FOR PERSONAL, SECURITY, MEDICAL, LEGAL OR FINANCIAL DECISIONS AND YOU SHOULD CONSULT AN APPROPRIATE PROFESSIONAL FOR SPECIFIC ADVICE TAILORED TO YOUR SITUATION. YOU UNDERSTAND AND AGREE THAT ANY MATERIAL OR INFORMATION DOWNLOADED OR OTHERWISE OBTAINED THROUGH THE SERVICES OR ADDIBUDDY SOFTWARE WEBSITES IS DONE AT YOUR OWN RISK AND THAT YOU WILL BE SOLELY RESPONSIBLE FOR ANY DAMAGE ARISING FROM DOING SO. NO ADVICE OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED BY YOU FROM ADDIBUDDY OR THROUGH THE SERVICES OR ADDIBUDDY SOFTWARE WEBSITES WILL CREATE ANY WARRANTY NOT EXPRESSLY MADE IN THESE TERMS OF — USE. THE SERVICES ARE PROVIDED TO HELP WITH PERSONAL SAFETY, BUT YOU SHOULD ALWAYS USE COMMON SENSE AND SEEK HELP WHEN IT IS NEEDED. ADDIBUDDY CANNOT AND DOES NOT GUARANTEE THAT ANY EMERGENCY PERSONNEL WILL RESPOND IN A TIMELY MANNER OR AT ALL, OR THAT THE MOST APPROPRIATE PERSONNEL WILL RESPOND. ADDITIONALLY, EMERGENCY RESPONSE PERSONNEL MAY NOT RESPOND BECAUSE OF LOCAL LAWS, REGULATIONS OR POLICIES. YOU SHOULD VERIFY THAT APPROPRIATE EMERGENCY PERSONNEL HAVE BEEN CONTACTED AND HAVE ALL INFORMATION NEEDED TO RESPOND TO THE EMERGENCY. IF YOU ARE DISSATISFIED WITH ANY PORTION OF THE SERVICES OR ADDIBUDDY SOFTWARE WEBSITES, OR WITH ANY OF THESE TERMS OF USE, YOUR SOLE AND EXCLUSIVE REMEDY IS TO DISCONTINUE USING THE SERVICES AND ADDIBUDDY SOFTWARE WEBSITES.

## 16. Governing Law

### 16.1 The Terms shall be governed by the laws of England, the United Kingdom. You irrevocably consent to the exclusive jurisdiction and venue of the courts in England, the United Kingdom for all disputes arising out of or relating to these Terms.

### 16.2 If you are a consumer, Section 16.1 does not affect your statutory rights or prevent you from submitting a dispute under the law of, and in the country where you are resident.

## 17. Amendment of these Terms

### 17.1 Without prejudice, Addibuddy reserves the right to modify or amend the Terms from time to time by sending you an email or a message in the App. If you continue using the App following the receipt of such an email or a message, you declare that you accept those changes.

### 17.2 The version of the Terms effective at the time of placing your order will apply to the sale contract concluded between you and Addibuddy.

## 18. Contact us

### 18.1 If you would like to contact us, please use the following contact details:
- Addibuddy Ltd 77 Cypress Road, Guildford GU1 1LU, Surrey, UK
- Email: support@addibuddy.com 

## 19. Last amendment

### 19.1 These Terms have been last amended on 20th of September 2023.

''';
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        dottedBackIcon,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                    quickSandText(
                      text: 'Terms and Conditions',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    Image.asset(
                      dottedBackIcon,
                      color: Colors.transparent,
                      width: 20.w,
                      height: 20.h,
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                MarkdownBody(
                  data: termsAndConditionsText,
                  styleSheet: MarkdownStyleSheet(
                    h1: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                    ),
                    h2: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                    ),
                    h3: TextStyle(
                      fontSize: 16,
                      color: blackColor,
                    ),
                    p: TextStyle(fontSize: 16),
                    strong: TextStyle(fontWeight: FontWeight.bold),
                    em: TextStyle(fontStyle: FontStyle.italic),
                    blockSpacing: 8.0,
                    listBullet: TextStyle(fontSize: 16),
                    listBulletPadding: EdgeInsets.only(left: 16.0),
                    listIndent: 16.0,
                    blockquote: TextStyle(
                        color: Colors.grey[700], fontStyle: FontStyle.italic),
                    code: TextStyle(backgroundColor: Colors.grey[200]),
                    codeblockDecoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
