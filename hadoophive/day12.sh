hadoop jar /opt/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.3.0.jar -file wordmapper.py -mapper wordmapper.py -file wordreducer.py -reducer wordreducer.py -input purplecow.txt -output wordcount
2025-06-03 05:56:08,363 WARN streaming.StreamJob: -file option is deprecated, please use generic option -files instead.
packageJobJar: [wordmapper.py, wordreducer.py, /tmp/hadoop-unjar5776306867406434565/] [] /tmp/streamjob5696087534748370250.jar tmpDir=null
2025-06-03 05:56:09,271 INFO client.DefaultNoHARMFailoverProxyProvider: Connecting to ResourceManager at master/172.31.64.10:8032
2025-06-03 05:56:09,471 INFO client.DefaultNoHARMFailoverProxyProvider: Connecting to ResourceManager at master/172.31.64.10:8032
2025-06-03 05:56:09,682 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/varunm15t38hedu/.staging/job_1741226523923_13409
2025-06-03 05:56:10,641 INFO mapred.FileInputFormat: Total input files to process : 1
2025-06-03 05:56:11,217 INFO mapreduce.JobSubmitter: number of splits:110
2025-06-03 05:56:11,604 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1741226523923_13409
2025-06-03 05:56:11,604 INFO mapreduce.JobSubmitter: Executing with tokens: []
2025-06-03 05:56:11,760 INFO conf.Configuration: resource-types.xml not found
2025-06-03 05:56:11,760 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2025-06-03 05:56:11,845 INFO impl.YarnClientImpl: Submitted application application_1741226523923_13409
2025-06-03 05:56:11,866 INFO mapreduce.Job: The url to track the job: http://master:6318/proxy/application_1741226523923_13409/
2025-06-03 05:56:11,867 INFO mapreduce.Job: Running job: job_1741226523923_13409
2025-06-03 05:56:39,189 INFO mapreduce.Job: Job job_1741226523923_13409 running in uber mode : false
2025-06-03 05:56:39,191 INFO mapreduce.Job:  map 0% reduce 0%
2025-06-03 05:57:07,415 INFO mapreduce.Job:  map 1% reduce 0%
2025-06-03 05:57:09,425 INFO mapreduce.Job:  map 2% reduce 0%
2025-06-03 05:57:21,498 INFO mapreduce.Job:  map 3% reduce 0%
2025-06-03 05:58:11,822 INFO mapreduce.Job:  map 4% reduce 0%
2025-06-03 05:58:15,843 INFO mapreduce.Job:  map 5% reduce 0%
2025-06-03 05:58:37,955 INFO mapreduce.Job:  map 6% reduce 0%
2025-06-03 05:58:51,012 INFO mapreduce.Job:  map 7% reduce 0%
2025-06-03 05:59:20,171 INFO mapreduce.Job:  map 8% reduce 0%
2025-06-03 05:59:50,307 INFO mapreduce.Job:  map 9% reduce 0%
2025-06-03 06:00:24,484 INFO mapreduce.Job:  map 10% reduce 0%
2025-06-03 06:00:25,488 INFO mapreduce.Job:  map 11% reduce 0%
2025-06-03 06:02:02,911 INFO mapreduce.Job:  map 12% reduce 0%
2025-06-03 06:02:12,947 INFO mapreduce.Job:  map 13% reduce 0%
2025-06-03 06:02:26,009 INFO mapreduce.Job:  map 14% reduce 0%
2025-06-03 06:04:56,646 INFO mapreduce.Job:  map 15% reduce 0%
2025-06-03 06:06:49,115 INFO mapreduce.Job:  map 16% reduce 0%
2025-06-03 06:07:00,150 INFO mapreduce.Job:  map 17% reduce 0%
2025-06-03 06:07:10,194 INFO mapreduce.Job:  map 18% reduce 0%
2025-06-03 06:07:23,242 INFO mapreduce.Job:  map 19% reduce 0%
2025-06-03 06:07:35,287 INFO mapreduce.Job:  map 20% reduce 0%
2025-06-03 06:07:48,344 INFO mapreduce.Job:  map 21% reduce 0%
2025-06-03 06:08:01,403 INFO mapreduce.Job:  map 22% reduce 0%
2025-06-03 06:08:13,453 INFO mapreduce.Job:  map 23% reduce 0%
2025-06-03 06:08:27,499 INFO mapreduce.Job:  map 24% reduce 0%
2025-06-03 06:08:43,554 INFO mapreduce.Job:  map 25% reduce 0%
2025-06-03 06:09:08,642 INFO mapreduce.Job:  map 26% reduce 0%
2025-06-03 06:09:19,678 INFO mapreduce.Job:  map 27% reduce 0%
2025-06-03 06:09:21,684 INFO mapreduce.Job:  map 28% reduce 0%
2025-06-03 06:09:25,696 INFO mapreduce.Job:  map 29% reduce 0%
2025-06-03 06:09:36,730 INFO mapreduce.Job:  map 30% reduce 0%
2025-06-03 06:09:46,763 INFO mapreduce.Job:  map 31% reduce 0%
2025-06-03 06:09:50,778 INFO mapreduce.Job:  map 32% reduce 0%
2025-06-03 06:10:05,822 INFO mapreduce.Job:  map 33% reduce 0%
2025-06-03 06:10:19,895 INFO mapreduce.Job:  map 34% reduce 0%
2025-06-03 06:10:20,899 INFO mapreduce.Job:  map 35% reduce 0%
2025-06-03 06:10:40,961 INFO mapreduce.Job:  map 36% reduce 0%
2025-06-03 06:10:49,998 INFO mapreduce.Job:  map 37% reduce 0%
2025-06-03 06:10:59,029 INFO mapreduce.Job:  map 38% reduce 0%
2025-06-03 06:11:13,072 INFO mapreduce.Job:  map 39% reduce 0%
2025-06-03 06:11:16,080 INFO mapreduce.Job:  map 40% reduce 0%
2025-06-03 06:11:29,120 INFO mapreduce.Job:  map 41% reduce 0%
2025-06-03 06:11:39,154 INFO mapreduce.Job:  map 42% reduce 0%
2025-06-03 06:11:52,196 INFO mapreduce.Job:  map 43% reduce 0%
2025-06-03 06:12:04,232 INFO mapreduce.Job:  map 44% reduce 0%
2025-06-03 06:12:17,274 INFO mapreduce.Job:  map 45% reduce 0%
2025-06-03 06:12:39,356 INFO mapreduce.Job:  map 46% reduce 0%
2025-06-03 06:12:49,393 INFO mapreduce.Job:  map 47% reduce 0%
2025-06-03 06:13:01,427 INFO mapreduce.Job:  map 48% reduce 0%
2025-06-03 06:13:04,436 INFO mapreduce.Job:  map 49% reduce 0%
2025-06-03 06:13:16,477 INFO mapreduce.Job:  map 50% reduce 0%
2025-06-03 06:13:26,506 INFO mapreduce.Job:  map 51% reduce 0%
2025-06-03 06:13:37,540 INFO mapreduce.Job:  map 52% reduce 0%
2025-06-03 06:13:50,593 INFO mapreduce.Job:  map 53% reduce 0%
2025-06-03 06:13:59,620 INFO mapreduce.Job:  map 54% reduce 0%
2025-06-03 06:14:09,650 INFO mapreduce.Job:  map 55% reduce 0%
2025-06-03 06:14:29,711 INFO mapreduce.Job:  map 56% reduce 0%
2025-06-03 06:14:30,714 INFO mapreduce.Job:  map 57% reduce 0%
2025-06-03 06:14:42,752 INFO mapreduce.Job:  map 58% reduce 0%
2025-06-03 06:14:46,771 INFO mapreduce.Job:  map 59% reduce 0%
2025-06-03 06:15:02,821 INFO mapreduce.Job:  map 60% reduce 0%
2025-06-03 06:15:14,863 INFO mapreduce.Job:  map 61% reduce 0%
2025-06-03 06:15:16,869 INFO mapreduce.Job:  map 62% reduce 0%
2025-06-03 06:15:18,875 INFO mapreduce.Job:  map 63% reduce 0%
2025-06-03 06:15:30,915 INFO mapreduce.Job:  map 64% reduce 0%
2025-06-03 06:15:39,948 INFO mapreduce.Job:  map 65% reduce 0%
2025-06-03 06:15:57,005 INFO mapreduce.Job:  map 66% reduce 0%
2025-06-03 06:16:15,074 INFO mapreduce.Job:  map 67% reduce 0%
2025-06-03 06:16:16,077 INFO mapreduce.Job:  map 68% reduce 0%
2025-06-03 06:16:29,131 INFO mapreduce.Job:  map 69% reduce 0%
2025-06-03 06:16:42,188 INFO mapreduce.Job:  map 70% reduce 0%
2025-06-03 06:16:55,234 INFO mapreduce.Job:  map 71% reduce 0%
2025-06-03 06:16:58,259 INFO mapreduce.Job:  map 72% reduce 0%
2025-06-03 06:17:13,314 INFO mapreduce.Job:  map 73% reduce 0%
2025-06-03 06:18:04,492 INFO mapreduce.Job:  map 74% reduce 0%
2025-06-03 06:18:39,612 INFO mapreduce.Job:  map 75% reduce 0%
2025-06-03 06:20:53,141 INFO mapreduce.Job:  map 76% reduce 0%
2025-06-03 06:21:32,269 INFO mapreduce.Job:  map 77% reduce 0%
2025-06-03 06:21:58,359 INFO mapreduce.Job:  map 78% reduce 0%
2025-06-03 06:22:09,398 INFO mapreduce.Job:  map 79% reduce 0%
2025-06-03 06:22:11,404 INFO mapreduce.Job:  map 80% reduce 0%
2025-06-03 06:22:19,429 INFO mapreduce.Job:  map 81% reduce 0%
2025-06-03 06:22:27,454 INFO mapreduce.Job:  map 82% reduce 0%
2025-06-03 06:22:31,468 INFO mapreduce.Job:  map 83% reduce 0%
2025-06-03 06:22:40,503 INFO mapreduce.Job:  map 84% reduce 0%
2025-06-03 06:22:46,522 INFO mapreduce.Job:  map 85% reduce 0%
2025-06-03 06:23:05,595 INFO mapreduce.Job:  map 86% reduce 0%
2025-06-03 06:23:12,621 INFO mapreduce.Job:  map 87% reduce 0%
2025-06-03 06:23:25,677 INFO mapreduce.Job:  map 88% reduce 0%
2025-06-03 06:23:34,707 INFO mapreduce.Job:  map 89% reduce 0%
2025-06-03 06:23:59,823 INFO mapreduce.Job:  map 90% reduce 0%
2025-06-03 06:24:13,865 INFO mapreduce.Job:  map 91% reduce 0%
2025-06-03 06:24:26,908 INFO mapreduce.Job:  map 92% reduce 0%
2025-06-03 06:24:37,943 INFO mapreduce.Job:  map 93% reduce 0%
2025-06-03 06:24:45,969 INFO mapreduce.Job:  map 94% reduce 0%
2025-06-03 06:24:53,993 INFO mapreduce.Job:  map 95% reduce 0%
2025-06-03 06:25:15,068 INFO mapreduce.Job:  map 96% reduce 0%
2025-06-03 06:25:25,097 INFO mapreduce.Job:  map 97% reduce 0%
2025-06-03 06:25:36,136 INFO mapreduce.Job:  map 98% reduce 0%
2025-06-03 06:25:41,151 INFO mapreduce.Job:  map 99% reduce 0%
2025-06-03 06:25:54,194 INFO mapreduce.Job:  map 100% reduce 0%
2025-06-03 06:26:03,222 INFO mapreduce.Job:  map 100% reduce 50%
2025-06-03 06:26:31,306 INFO mapreduce.Job:  map 100% reduce 100%
2025-06-03 06:26:32,313 INFO mapreduce.Job: Job job_1741226523923_13409 completed successfully
2025-06-03 06:26:32,477 INFO mapreduce.Job: Counters: 56
        File System Counters
                FILE: Number of bytes read=219
                FILE: Number of bytes written=30275298
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=17655
                HDFS: Number of bytes written=141
                HDFS: Number of read operations=340
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=4
                HDFS: Number of bytes read erasure-coded=0
        Job Counters 
                Killed reduce tasks=5
                Launched map tasks=110
                Launched reduce tasks=6
                Data-local map tasks=68
                Rack-local map tasks=42
                Total time spent by all maps in occupied slots (ms)=4155724
                Total time spent by all reduces in occupied slots (ms)=85460
                Total time spent by all map tasks (ms)=1038931
                Total time spent by all reduce tasks (ms)=21365
                Total vcore-milliseconds taken by all map tasks=2077862
                Total vcore-milliseconds taken by all reduce tasks=21365
                Total megabyte-milliseconds taken by all map tasks=4255461376
                Total megabyte-milliseconds taken by all reduce tasks=87511040
        Map-Reduce Framework
                Map input records=4
                Map output records=24
                Map output bytes=159
                Map output materialized bytes=1527
                Input split bytes=11550
                Combine input records=0
                Combine output records=0
                Reduce input groups=21
                Reduce shuffle bytes=1527
                Reduce input records=24
                Reduce output records=21
                Spilled Records=48
                Shuffled Maps =220
                Failed Shuffles=0
                Merged Map outputs=220
                GC time elapsed (ms)=15146
                CPU time spent (ms)=80830
                Physical memory (bytes) snapshot=81516130304
                Virtual memory (bytes) snapshot=313743917056
                Total committed heap usage (bytes)=82605768704
                Peak Map Physical memory (bytes)=792801280
                Peak Map Virtual memory (bytes)=2779176960
                Peak Reduce Physical memory (bytes)=222773248
                Peak Reduce Virtual memory (bytes)=4478324736
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters 
                Bytes Read=6105
        File Output Format Counters 
                Bytes Written=141
2025-06-03 06:26:32,477 INFO streaming.StreamJob: Output directory: wordcount