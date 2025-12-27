
Configure MongoDB replicaset

oc exec -it mongo-sts-0 -- mongosh --quiet --eval 'rs.initiate({
  _id: "rs0",
  members: [
    {_id: 0, host: "mongo-sts-0.mongo-sts-svc.bsc-ssd-y4-2025-testssduser01.svc.cluster.local:27017"},
    {_id: 1, host: "mongo-sts-1.mongo-sts-svc.bsc-ssd-y4-2025-testssduser01.svc.cluster.local:27017"},
    {_id: 2, host: "mongo-sts-2.mongo-sts-svc.bsc-ssd-y4-2025-testssduser01.svc.cluster.local:27017"}]})'


    use sample_mflix
db.questions.insertOne(
 {
        "id": 7,
        "text": "Which of the following statements is true?",
        "correctAnswerIndex": 1,
        "answers": [
            "When the readiness probe fails, the container is restarted.",
            "When the liveness probe fails, the container is restarted.",
            "Containers without a readiness probe are never restarted.",
            "Containers without a liveness probe are never restarted."
        ]
    }
)


