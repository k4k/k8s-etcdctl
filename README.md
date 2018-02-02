# k8s-etcdctl
Run etcdctl jobs against k8s nodes.

# Build
`script/build [tag]` builds the docker image. Tag is an option argument
(defaults to alpine-etcdctl:latest).

# Deploy
Use helm to deploy this. By default, this will deploy a `CronJob` that runs
`etcdctl defrag` every hour on nodes where label `k8s_controller=true`.
