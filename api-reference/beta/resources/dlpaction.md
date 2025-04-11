---
title: "dlpAction"
description: "Specifies the type of action taken by a Data Loss Prevention (DLP) policy rule."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: low
ms.subservice: "security"
doc_type: enumPageType
---

# dlpAction

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the type of action configured within a Data Loss Prevention (DLP) policy rule. Used in [dlpActionInfo](../resources/dlpactioninfo.md).

## Members

| Member                          | Value | Description                                                     |
| :------------------------------ | :---- | :-------------------------------------------------------------- |
| notifyUser                      | 0     | Notify the user (via email, policy tip).                        |
| blockAccess                     | 1     | Block access to the content.                                    |
| deviceRestriction               | 2     | Restrict actions on endpoint devices (copy, print, etc.).       |
| browserRestriction              | 3     | Restrict actions in web browsers (upload, paste, print, etc.).  |
| unknownFutureValue              | 4     | Evolvable enumeration sentinel value. Do not use.              |
| restrictAccess                  | 5     | Restrict access (typically for SPO/ODB).                        |
| generateAlert                   | 6     | Generate an alert in the compliance portal.                     |
| generateIncidentReportAction    | 7     | Generate an incident report (often sent via email).             |
| sPBlockAnonymousAccess          | 8     | SharePoint Online: Block anonymous access.                       |
| sPRuntimeAccessControl          | 9     | SharePoint Online: Apply runtime access control.                |
| sPSharingNotifyUser             | 10    | SharePoint Online: Block sharing and notify user.               |
| sPSharingGenerateIncidentReport | 11    | SharePoint Online: Block sharing and generate incident report.  |

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.dlpAction"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.dlpAction",
  "members": [
    { "name": "notifyUser", "value": 0 },
    { "name": "blockAccess", "value": 1 },
    { "name": "deviceRestriction", "value": 2 },
    { "name": "browserRestriction", "value": 3 },
    { "name": "unknownFutureValue", "value": 4 },
    { "name": "restrictAccess", "value": 5 },
    { "name": "generateAlert", "value": 6 },
    { "name": "generateIncidentReportAction", "value": 7 },
    { "name": "sPBlockAnonymousAccess", "value": 8 },
    { "name": "sPRuntimeAccessControl", "value": 9 },
    { "name": "sPSharingNotifyUser", "value": 10 },
    { "name": "sPSharingGenerateIncidentReport", "value": 11 }
  ]
}
```
