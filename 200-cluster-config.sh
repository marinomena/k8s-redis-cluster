kubectl exec -it redis-cluster-0 -- redis-trib create --replicas 1 $(kubectl get pods -l app=redis-cluster -o jsonpath='{range.items[*]}{.status.podIP}:6379 ')

