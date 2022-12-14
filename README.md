# Pintu
GitOps Flow deployment with ArgoCD and Helm Template

### this is a GitOps method to run the CI/CD pipeline using jenkinsfile (groovy scripting) deployed on Kubernetes by ArgoCD using helm template (manifest) depands on the environment (prd, stg, etc) ###
### so we will have 2 repos (app repo and helm repo), jenkins will create a new tag into the values of helm (values.prod in our case) whenever jenkins job has been done inside the helm repo ###
### and without human interaction, all the manifest will be deployed into the k8s cluster fastly ###

```Explanation of the Action```
1. CI process is in different CD process (to have a security config between dev team and ops team)
2. CI pipeline has 6 stages from checkout SCM til Helm Update
3. After helm update, argoCD will automatically sync the out of sync tag from helm values.prod
4. The manifest of deployment will deploy on the cluster of kubernetes after auto sync is running
5. The domain can be accessed on **pintu.smartkmsystem.com** 

```The CI processes will be done with these following steps```
- Checkout into SCM 
- Checking and verify the current environment
- Build 
- Test
- Build Image
- Push Image
- Helm Update

```The CD process will be done with these following steps```
- ArgoCD will be setup to auto sync and watch any cahnges inside the helm values 
- All the manifest inside values.prod will be deployed by argoCD into k8s cluster

```The Repos```
1. Application Repository - https://github.com/zoeldjian/pintu
2. Helm (maifest) Repository - https://github.com/zulfikarwantogia/helm-labbing

```Jenkins Stages - CI```

![Screen Shot 2022-11-05 at 00 06 33](https://user-images.githubusercontent.com/8435948/200034659-66b860a6-aa37-42f7-8b40-d0033d6bdca6.png)


```Argocd deployment to k8s cluster - CD```

![Screen Shot 2022-11-04 at 23 40 42](https://user-images.githubusercontent.com/8435948/200033956-44d21d7b-555f-4175-90f2-6a4561fad032.png)

