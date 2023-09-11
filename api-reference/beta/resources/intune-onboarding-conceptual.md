---
title: "Onboard managed devices with Intune - Microsoft Graph API"
description: "Lists the Microsoft Graph API for Intune endpoints (REST) used to onboard (configure and initialize) devices for a tenant organization."
ms.localizationpriority: medium
author: "jaiprakashmb"
ms.prod: "intune"
---

# Enroll devices for management in Intune

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

You can enroll devices, including Windows PCs, to enable mobile device management (MDM) with Microsoft Intune. This topic describes different ways to enroll mobile devices in Intune management. The way you enroll your devices depends on the device type, ownership, and the level of management that's needed. "Bring your own device" (BYOD) enrollment lets users enroll their personal phones, tablets, or PCs. Corporate-owned device (COD) enrollment enables management scenarios like remote wipe, shared devices, or user affinity for a device.

Use Graph resources to manage enrollment in Intune. See the table of content for a list of resources.
