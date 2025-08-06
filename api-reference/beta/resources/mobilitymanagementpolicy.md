---
title: "mobilityManagementPolicy resource type"
description: "A mobility management policy represents an autoenrollment policy for a mobility management application configured in Azure AD."
author: "ravennMSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# mobilityManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Microsoft Entra ID, a mobility management policy represents an autoenrollment configuration for a mobility management (MDM or MAM) application. These policies are only applicable to devices based on Windows 10 OS and its derivatives (Surface Hub, HoloLens etc.). [Autoenrollment](/windows/client-management/mdm/azure-ad-and-microsoft-intune-automatic-mdm-enrollment-in-the-new-portal) enables organizations to automatically enroll devices into their chosen mobility management application as part of [Microsoft Entra join](/azure/active-directory/devices/concept-azure-ad-join) or [Microsoft Entra register](/azure/active-directory/devices/concept-azure-ad-register) process on Windows 10 devices.
