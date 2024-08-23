---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TrustFrameworkKeySet trustFrameworkKeySet = new TrustFrameworkKeySet();
trustFrameworkKeySet.setId("keyset1");
LinkedList<TrustFrameworkKey> keys = new LinkedList<TrustFrameworkKey>();
TrustFrameworkKey trustFrameworkKey = new TrustFrameworkKey();
trustFrameworkKey.setK("k-value");
LinkedList<String> x5c = new LinkedList<String>();
x5c.add("x5c-value");
trustFrameworkKey.setX5c(x5c);
trustFrameworkKey.setX5t("x5t-value");
trustFrameworkKey.setKty("kty-value");
trustFrameworkKey.setUse("use-value");
trustFrameworkKey.setExp(99L);
trustFrameworkKey.setNbf(99L);
trustFrameworkKey.setKid("kid-value");
trustFrameworkKey.setE("e-value");
trustFrameworkKey.setN("n-value");
trustFrameworkKey.setD("d-value");
trustFrameworkKey.setP("p-value");
trustFrameworkKey.setQ("q-value");
trustFrameworkKey.setDp("dp-value");
trustFrameworkKey.setDq("dq-value");
trustFrameworkKey.setQi("qi-value");
keys.add(trustFrameworkKey);
trustFrameworkKeySet.setKeys(keys);
TrustFrameworkKeySet result = graphClient.trustFramework().keySets().post(trustFrameworkKeySet);


```