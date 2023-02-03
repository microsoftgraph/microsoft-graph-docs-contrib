---
title: "deviceEnrollmentConfigurationType enum type"
description: "Describes the TemplateFamily for the Template entity"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceEnrollmentConfigurationType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes the TemplateFamily for the Template entity

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Set to unknown if the configuration type cannot be determined.|
|limit|1|Indicates that configuration is of type limit which refers to number of devices a user is allowed to enroll.|
|platformRestrictions|2|Indicates that configuration is of type platform restriction which refers to types of devices a user is allowed to enroll.|
|windowsHelloForBusiness|3|Indicates that configuration is of type Windows Hello which refers to authentication method devices would use.|
|defaultLimit|4|Indicates that configuration is of type default limit which refers to types of devices a user is allowed to enroll by default.|
|defaultPlatformRestrictions|5|Indicates that configuration is of type default platform restriction which refers to types of devices a user is allowed to enroll by default.|
|defaultWindowsHelloForBusiness|6|Indicates that configuration is of type default Windows Hello which refers to authentication method devices would use by default.|
|defaultWindows10EnrollmentCompletionPageConfiguration|7|Indicates that configuration is of type default Enrollment status page which refers to startup page displayed during OOBE in Autopilot devices by default.|
|windows10EnrollmentCompletionPageConfiguration|8|Indicates that configuration is of type Enrollment status page which refers to startup page displayed during OOBE in Autopilot devices.|
|deviceComanagementAuthorityConfiguration|9|Indicates that configuration is of type Comanagement Authority which refers to policies applied to Co-Managed devices.|
|singlePlatformRestriction|10|Indicates that configuration is of type single platform restriction which refers to types of devices a user is allowed to enroll.|
|unknownFutureValue|11|Unknown future value|
|enrollmentNotificationsConfiguration|12|Indicates that configuration is of type Enrollment Notification which refers to types of notification a user receives during enrollment.|
