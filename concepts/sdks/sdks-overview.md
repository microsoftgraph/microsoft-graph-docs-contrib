---
title: "Microsoft Graph SDK overview"
description: "The Microsoft Graph SDK is available for the following languages: C#, PowerShell, TypeScript, JavaScript, Java, Go, PHP, and Python."
ms.localizationpriority: medium
author: MichaelMainer
ms.custom: scenarios:getting-started
---

# Microsoft Graph SDK overview

The Microsoft Graph SDKs are designed to simplify building high-quality, efficient, and resilient applications that access Microsoft Graph. The SDKs include two components: a service library and a core library.

The *service library* contains models and request builders that are generated from Microsoft Graph metadata to provide a rich, strongly typed, and discoverable experience when working with the many datasets available in Microsoft Graph.

The *core library* provides a set of features that enhance working with all the Microsoft Graph services. Embedded support for retry handling, secure redirects, transparent authentication, and payload compression improve the quality of your application's interactions with Microsoft Graph, with no added complexity, while leaving you completely in control. The core library also provides support for common tasks such as paging through collections and creating batch requests.

## Supported languages

SDKs are currently available for the following languages:

- [C#](https://github.com/microsoftgraph/msgraph-sdk-dotnet)
- [PowerShell](https://github.com/microsoftgraph/msgraph-sdk-powershell)
- [TypeScript | JavaScript](https://github.com/microsoftgraph/msgraph-sdk-javascript)
- [Java](https://github.com/microsoftgraph/msgraph-sdk-java)
- [Go](https://github.com/microsoftgraph/msgraph-sdk-go)
- [PHP](https://github.com/microsoftgraph/msgraph-sdk-php)
- [Python (preview)](https://github.com/microsoftgraph/msgraph-sdk-python)

## SDKs in preview or GA status

A release of an SDK can be in *preview* status upon debut or a significant update. Do not assume that a preview release will always be promoted to generally available (GA) status.

In addition, do not use a preview release of an SDK in production apps, regardless of the version of Microsoft Graph API (v1.0 or beta) it uses.

A release of an SDK in *GA* status can use the Microsoft Graph API v1.0 endpoint or beta endpoint as specified. Because Microsoft Graph APIs in the beta endpoint are subject to breaking changes, do not use in production apps a GA release of an SDK that accesses the Microsoft Graph API beta endpoint.

## Microsoft 365 developer subscription

When building applications using Microsoft Graph, we recommend that you get a free Microsoft 365 developer subscription by signing up for the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program).

## See also

- For more details about the features and capabilities of the SDK, see the SDK [design requirements documentation](https://github.com/microsoftgraph/msgraph-sdk-design).
- Request or vote on additional features at the [Microsoft 365 Developer Platform ideas forum](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph).
- For a list of samples for Microsoft Graph, see the [Microsoft Graph resources page](https://developer.microsoft.com/graph/gallery/?filterBy=Samples).
