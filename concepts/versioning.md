# Versioning, support, and breaking change policy for Microsoft Graph 

This article describes the versions and support and breaking change policies for Microsoft Graph.

## Support policy and deprecation information

Microsoft Graph follows the [Microsoft Lifecycle Policy](https://support.microsoft.com/en-us/lifecycle). 

As new versions of the Microsoft Graph REST APIs and Microsoft Graph SDKs are released, earlier versions will be retired. Microsoft will declare a version as deprecated at least 24 months in advance of retiring an API or an SDK. 

When we increment the major version of the API (for example, from v1.0 to v2.0), we are announcing that all support for existing clients that use the previous version will be deprecated and no longer supported 24 months after the new version is available. When an API is marked as deprecated, we strongly recommend that you upgrade to the latest version as soon as possible to avoid being affected when the deprecated service version is removed. We might make exceptions to this policy for service security or health reliability issues. 

### API contract and non-backward compatible changes

Microsoft Graph has a long of changes across versions. These changes are listed in the [Microsoft Graph Changelog](changelog.md). As new functionality and data is added to Microsoft Graph, we will increment the API version number for any non-backward compatible changes to the API. 

The following are examples of non-backward compatible changes:

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

>**Note:** Over time, we will update the list of backward compatible changes. If you generate your own client proxies (like WCF clients), our guidance is that your client applications should be prepared to receive properties and derived types not previously defined by the Microsoft Graph API service. Microsoft Graph API follows the guidance described in the Model Versioning section in the Microsoft REST API guidelines. 

## Versions

The following versions of the Microsoft Graph API are currently available.

### Beta
Exposed under 'https://graph.microsoft.com/beta', the Microsoft Graph API beta version contains features that are currently in preview. The documentation can be found in the Beta Reference section. Expect breaking changes to the beta version from time to time.  Do not take a production dependency on /beta APIs.

Feature promotion

We make no guarantees that a beta feature will be promoted to the current version.
When the Microsoft Graph API team believes that a beta feature is ready for general availability (GA), we will add that feature to the latest current version. If the feature promotion would result in a breaking change to the current version, the version number will be incremented, with the new version becoming the current version.
Our developer community can post feature request on UserVoice, for new features as well as requesting promotion of existing preview APIs to the current version. 

### Current Version

The current version of Microsoft Graph is v1.0. 
Exposed under: https://graph.microsoft.com/v1.0, the Microsoft Graph API /v1.0 version contains the features generally available (GA) and ready for production use. The documentation can be found by navigating the table of contents on the left.
Deprecated and unsupported versions
There are currently no deprecated versions of the Microsoft Graph.

## Terms of use

By using the Microsoft Graph APIs developers agree to the Terms of Use insert link here
Your feedback is important to us. Connect with us on Stack Overflow. Tag your questions with [MicrosoftGraph].
