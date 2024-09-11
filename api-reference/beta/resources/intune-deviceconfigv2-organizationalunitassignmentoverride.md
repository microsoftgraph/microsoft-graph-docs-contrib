---
title: "organizationalUnitAssignmentOverride enum type"
description: "OrganizationalUnitAssignmentOverride represents different options for overriding Organizational Unit (OU) assignments in an organizational hierarchy."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
---

# organizationalUnitAssignmentOverride enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

OrganizationalUnitAssignmentOverride represents different options for overriding Organizational Unit (OU) assignments in an organizational hierarchy.

## Members
|Member|Value|Description|
|:---|:---|:---|
|allowed|0|Default. Indicates that descendant organizational units are allowed to override their ancestor Organizational Unit (OU) payload assignments if allowed is set in all items of an Organizational Unit (OU) lineage. In case of conflict, the descendant payload assignment takes precedence.|
|denied|1|Indicates that in an Organizational Unit (OU) hierarchy, descendants are denied the ability to override their ancestor's payload assignments if denied is set in any Organizational Unit (OU) from the descendant to the ancestor. In case of conflict, the ancestor payload assignment takes precedence.|
|unknown|2|Indicates unknown override type.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|
