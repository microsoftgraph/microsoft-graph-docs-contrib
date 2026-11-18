---
author: ziqifu9527
ms.topic: include
---

> [!NOTE]
> For delegated access using work or school accounts, the signed-in user must have the `BulkActions/Write` permission and the permissions required for the selected action through [Windows 365 role-based access control](/windows-365/enterprise/role-based-access), in addition to the Microsoft Graph permission. To create a [cloudPcBulkSetDeviceName](/graph/api/resources/cloudpcbulksetdevicename?view=graph-rest-beta&preserve-view=true) action, the user must also have `CloudPCs/SetDeviceName`. The **Cloud PC Administrator** role or a custom role that grants these permissions can be used. Supported Microsoft Entra roles include **Windows 365 Administrator** and **Intune Administrator**.
>
> For scoped role assignments, the target Cloud PCs must also be within the user's assigned [scope groups](/windows-365/enterprise/role-based-access#scope-groups) and [scope tags](/windows-365/enterprise/role-based-access#scope-tags). These user role requirements don't apply to application-only access.
