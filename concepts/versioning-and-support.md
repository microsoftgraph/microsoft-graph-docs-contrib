---
title: "Versioning, support, and breaking change policies for Microsoft Graph"
description: "Learn about the support and breaking change policies for Microsoft Graph and the versions of the Microsoft Graph API that are currently available."
ms.localizationpriority: high
---

# Versioning, support, and breaking change policies for Microsoft Graph

This article describes the support and breaking change policies for Microsoft Graph and the versions of the Microsoft Graph API that are currently available.

## Support policy and deprecation information

Microsoft Graph follows the [Microsoft Lifecycle Policy](https://support.microsoft.com/lifecycle).

As new versions of the Microsoft Graph REST APIs are released, earlier versions will be retired. Microsoft declares a version as deprecated at least 24 months in advance of retiring it. Similarly, for individual APIs that reached general availability (GA), Microsoft declares an API as deprecated at least 24 months in advance of removing it from the GA version. 

For Microsoft Graph SDKs, only the latest major version of any given library is supported and updated with new features, bug fixes, and workarounds. The major version that precedes the latest version is supported for 12 months from the release date of the latest major version, for security fixes only. We recommend that you upgrade to the latest version of the SDKs whenever possible.

When we increment the major version of the API (for example, from v1.0 to v2.0), we're announcing that the current version (in this example, v1.0) is immediately deprecated and we'll no longer support it 24 months after the announcement. We might make exceptions to this policy for service security or health reliability issues.

When an API is marked as deprecated, we strongly recommend that you migrate to the latest version as soon as possible. In some cases, we'll announce that new applications will have to start using the new APIs a short time after the original APIs are deprecated. In those cases, only active applications that currently use the deprecated APIs can continue to use them.

### API contract and nonbackward compatible changes

Microsoft Graph has a log of changes across versions. These changes are listed in the [Microsoft Graph changelog](https://developer.microsoft.com/graph/changelog). As new functionality and data are added to Microsoft Graph, we increment the API version number for any nonbackward compatible changes to the API.

The following are examples of nonbackward compatible changes:

- Changes to the URL or fundamental request/response associated with a resource
- Removal, rename, or change to the type of a declared property
- Removal or rename of APIs or API parameters
- Addition of a required request header

The following are examples of backward compatible changes:

- Addition of properties that are nullable or have a default value
- Addition of a member to an enumeration
- Removal, rename, or change to the type of an open extension
- Removal, rename, or change to the type of an annotation
- Introduction of paging to existing collections
- Changes to error codes
- Changes to the order of properties
- Changes to the length or format of opaque strings, such as resource IDs

>**Note:** Over time, we will update the list of backward compatible changes. If you generate your own client proxies (like WCF clients), our guidance is that your client applications should be prepared to receive properties and derived types not previously defined by the Microsoft Graph API service. Microsoft Graph API follows the guidance described in the [Model Versioning](https://github.com/Microsoft/api-guidelines/blob/master/Guidelines.md#12-versioning) section in the [Microsoft REST API guidelines](https://github.com/microsoft/api-guidelines/).

## Versions

The following versions of the Microsoft Graph API are currently available.

### Beta version
In general, APIs debut in the beta version and are accessible in the `https://graph.microsoft.com/beta` endpoint. For beta API documentation, see [Microsoft Graph beta endpoint reference](/graph/api/overview?view=graph-rest-beta&preserve-view=true). Expect breaking changes and deprecation of APIs in the beta version from time to time. Don't take a production dependency on beta APIs.

We make no guarantees that a beta feature will be promoted to the current version. When the Microsoft Graph API team believes that a beta feature is ready for general availability, we add that feature to the latest current version. If the promotion of the feature would result in a breaking change to the current version, the version number is incremented, with the new version becoming the current version.

### Current version

The current version of Microsoft Graph is v1.0. These APIs are accessible in the `https://graph.microsoft.com/v1.0` endpoint. The Microsoft Graph API v1.0 version contains features that are generally available and ready for production use. For v1.0 API documentation, see [Microsoft Graph v1.0 endpoint reference](/graph/api/overview?view=graph-rest-1.0&preserve-view=true).

## Preview status
An API or feature in Microsoft Graph is labeled as "(preview)" to indicate that its behavior is _unique_ in the beta endpoint. 

The behavior of most APIs and features in the v1.0 version is in parity with the beta version. Some APIs are marked as "preview" for one of the following reasons: 
- The APIs are available in beta only
- The behavior of the APIs is different in beta than v1.0.

Like any other API in the beta endpoint, we can introduce breaking changes to APIs that are marked as preview without notice. Don't access APIs from the beta endpoint in production apps.

APIs can be in preview even when the feature or product itself is generally available.

### Deprecated and unsupported versions

Currently, no versions of Microsoft Graph are deprecated or unsupported.

## Terms of use

By using the Microsoft Graph APIs, you agree to the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use?context=/graph/context).

Your feedback is important to us. Connect with us on [Microsoft Q&A](/answers/products/m365#microsoft-graph). Tag your questions with [microsoft-graph-*].
