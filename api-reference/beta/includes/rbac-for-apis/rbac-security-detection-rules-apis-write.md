---
author: yossibruss-ms
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts, the signed-in user must be assigned a role that grants the permissions required for this operation. Custom detection rules use the Microsoft Defender XDR Unified role-based access control (RBAC) model. The following roles are supported:
> - **Detection tuning (Manage)** - A [Microsoft Defender XDR Unified RBAC](/defender-xdr/custom-permissions-details) permission that grants manage access to detections in the Microsoft Defender portal, including custom detections, alert tuning, and threat indicators of compromise.
> - **Security Administrator** - A [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json#security-administrator) that grants manage permissions across Microsoft Defender portals and services.
> - **Security Operator** - A [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json#security-operator). Sufficient for managing custom detection rules only when role-based access control is turned off in Microsoft Defender for Endpoint. If RBAC is configured, the **Manage Security Settings** permission for Defender for Endpoint is also required.
>
> Additional workload-specific permissions might be required to manage rules that target data from specific Defender workloads (for example, Defender for Endpoint, Defender for Office 365). For more information, see [Required permissions for managing custom detections](/defender-xdr/custom-detection-rules#required-permissions-for-managing-custom-detections).