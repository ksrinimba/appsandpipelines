cat > tmp-pv.yaml <<EOF
kubernetes:
  enabled: true
  accounts:
  - name: "default"
    liveManifestCalls: true
    requiredGroupMembership: []
    providerVersion: "v2"
    permissions: {}
    dockerRegistries: []
    configureImagePullSecrets: true
    serviceAccount: true
    cacheThreads: 1
    namespaces:
    - "default"
    - "opsmx-isd"
    omitNamespaces: []
    kinds: []
    omitKinds:
    - "podPreset"
    customResources: []
    cachingPolicies: []
    onlySpinnakerManaged: true
EOF

for i in {1..2000}
do

cat >> tmp-pv.yaml <<EOF
  - name: "acc$i"
    liveManifestCalls: true
    requiredGroupMembership: []
    providerVersion: "v2"
    permissions:
      READ:
      - qa$i
      WRITE:
      - dev$i
    dockerRegistries: []
    configureImagePullSecrets: true
    serviceAccount: true
    cacheThreads: 1
    namespaces:
    - "emptyns"
    omitNamespaces: []
    kinds: []
    omitKinds:
    - "podPreset"
    customResources: []
    cachingPolicies: []
    checkPermissionsOnStartup: false
    onlySpinnakerManaged: true
EOF

done
