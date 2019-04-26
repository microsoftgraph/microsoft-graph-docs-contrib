### YamlMime:YamlDocument
documentType: LandingData
title: Microsoft Graph Auth Overview
metadata:
  title: Microsoft Graph Auth Overview
  description: Learn the basics of OAuth2.0 and how to get tokens to call the Microsoft Graph API. 
  services: active-directory
  author: danieldobalian
  manager: CelesteDG
  ms.service: active-directory
  ms.subservice: develop
  ms.tgt_pltfrm: na
  ms.devlang: na
  ms.topic: landing-page
  ms.date: 04/05/2019
  ms.author: dadobali
abstract:
  description: The Microsoft Graph API is the gateway to data and intelligence in Microsoft 365.  The Microsoft Graph uses the industry-standard OAuth2.0 protocol to protect this data. This provides a secure mechanism to protect access while enabling app developers to directly integrate their applications.  

  This overview focuses on the basics of OAuth2.0, getting tokens for the Microsoft Graph API, and using these tokens following a set of best practices for security and user experience. 
sections:

  - items:
    - type: list
      style: cards
      className: cardsM
      columns: 4
      items:
      - href: /graph/app-registration
        html: <p>Begin your Microsoft Graph journey by registering your application.</p>
        image:
          src: ./images/index/i_get-started.svg
        title: App Registration
      - href: /graph/auth/auth-concepts
        html: <p>Explore the basics of OAuth2.0 and how it intersects with the Microsoft Graph API.</p>
        image:
          src: ./images/index/i_overview.svg
        title: Auth Concepts
      - href: /graph/permissions-reference
        html: <p>Learn more about Microsoft Graph scopes & app permissions.</p>
        image:
          src: ./images/index/i_code-edit.svg
        title: Permissions & Scopes
      - href: /graph/auth-cloudsolutionprovider
        html: <p>Enable apps access to partner-managed data.</p>
        image:
          src: ./images/index/i_api.svg
        title: Cloud Solution Providers (CSP)
  
  - title: Auth SDKs
    items:
    - type: paragraph
      text: 'Using an Auth SDK when integrating with the Microsoft Graph drastically simplifies to code that needs to be written and allows apps to focus on building great experiences.'
    - type: table
      style: dataMatrix
      columns:
        - image:
            src: ./images/index/logo_android.svg
          title: Android
        - image:
            src: ./images/index/angular.svg
          title: Angular
        - image:
            src: ./images/index/logo_NET.svg
          title: ASP.NET
        - image:
            src: ./images/index/logo_ios.svg
          title: iOS
        - image:
            src: ./images/index/logo_java.svg
          title: Java
        - image:
            src: ./images/index/logo_js.svg
          title: JavaScript
        - image:
            src: ./images/index/logo_nodejs.svg
          title: Node.js
        - image:
            src: ./images/index/logo_php.svg
          title: PHP
        - image:
            src: ./images/index/logo_python.svg
          title: Python
        - image:
            src: ./images/index/logo_ruby.svg
          title: Ruby
        - image:
            src: ./images/index/logo_windows.svg
          title: UWP
        - image:
            src: ./images/index/logo_xamarin.svg
          title: Xamarin
        - image:
            src: ./images/index/logo_reactnative.svg
          title: React Native 
      rows:
        - title: Microsoft Built
          values:
          - href: https://github.com/AzureAD/microsoft-authentication-library-for-android
          - href: https://github.com/AzureAD/microsoft-authentication-library-for-js
          - href: https://github.com/AzureAD/microsoft-authentication-library-for-dotnet
          - href: https://github.com/AzureAD/microsoft-authentication-library-for-objc
          - href: 
          - href: https://github.com/AzureAD/microsoft-authentication-library-for-js
          - href: 
          - href: 
          - href: 
          - href: 
          - href: https://github.com/AzureAD/microsoft-authentication-library-for-dotnet
          - href: https://github.com/AzureAD/microsoft-authentication-library-for-dotnet
          - href: 
        - title: Microsoft Compatible (Open Source)
          values:
          - href: https://github.com/openid/AppAuth-Android
          - href: 
          - href:
          - href: https://github.com/openid/AppAuth-iOS
          - href: https://github.com/scribejava/scribejava
          - href: https://adodson.com/hello.js/
          - href: https://github.com/panva/node-openid-client
          - href: https://github.com/thephpleague/oauth2-client
          - href: https://github.com/requests/requests-oauthlib
          - href: https://github.com/omniauth/omniauth/wiki
          - href: 
          - href: 
          - href: https://github.com/FormidableLabs/react-native-app-auth
 