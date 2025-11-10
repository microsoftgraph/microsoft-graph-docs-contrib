---
description: Automatically generated file. DO NOT MODIFY
ms.topic: include
ms.localizationpriority: medium
---

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|AgentCollection.ReadWrite.All AND AgentInstance.Read.All; for Global collection: AgentCollection.ReadWrite.Global AgentInstance.Read.All; for Quarantined collection: AgentCollection.ReadWrite.Quarantined AND AgentInstance.Read.All|AgentCollection.ReadWrite.All AND AgentInstance.ReadWrite.All; for Global collection: AgentCollection.ReadWrite.Global AND AgentInstance.ReadWrite.All; for Quarantined collection: AgentCollection.ReadWrite.Quarantined AND AgentInstance.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|AgentCollection.ReadWrite.ManagedBy AND AgentInstance.Read.All|AgentCollection.ReadWrite.All or AgentCollection.ReadWrite.ManagedBy AND (AgentInstance.Read.All, AgentInstance.ReadWrite.All, OR AgentInstance.ReadWrite.ManagedBy)|

