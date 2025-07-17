---
author: "jaiprakashmb"
ms.localizationpriority: high
ms.subservice: intune
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

#### Intune wip service limits

| Request type | Limit per tenant for all apps | Limit per app per tenant |
| ------------ | ----------------------------- | ------------------------ |
| POST, PUT, DELETE, PATCH | 200 requests per 20 seconds | 100 requests per 20 seconds |
| Any | 2000 requests per 20 seconds | 1000 requests per 20 seconds |

The preceding limits apply to the following resources:

| <!-- fake header--> |
|---|
| <ul> <li> [intuneBrandingProfile](/graph/api/resources/intune-wip-intunebrandingprofile) <li> [intuneBrandingProfileAssignment](/graph/api/resources/intune-wip-intunebrandingprofileassignment) <li> [windowsInformationProtectionAppLearningSummary](/graph/api/resources/intune-wip-windowsinformationprotectionapplearningsummary) <li> [windowsInformationProtectionNetworkLearningSummary](/graph/api/resources/intune-wip-windowsinformationprotectionnetworklearningsummary) </ul> |
