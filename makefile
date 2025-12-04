.PHONY: day-1 day-2 day-3 day-4 day-5 day-6 day-7 day-8 day-9 day-10 day-11 day-12

# Day 1
day-1-part-1-sample:
	bash day-1/part-1.sh day-1/sample.txt
day-1-part-1:
	bash day-1/part-1.sh day-1/input.txt
day-1-part-2-sample:
	bash day-1/part-2.sh day-1/sample.txt
day-1-part-2:
	bash day-1/part-2.sh day-1/input.txt
day-1:
	make day-1-part-1 day-1-part-2

# Day 2
day-2-part-1-sample:
	bash day-2/part-1.sh day-2/sample.txt
day-2-part-1:
	bash day-2/part-1.sh day-2/input.txt
day-2-part-2-sample:
	make day-2-part-1 day-2-part-2
day-2-part-2:
	bash day-2/part-2.sh day-2/sample.txt
day-2:
	make day-2-part-1 day-2-part-2

# Day 3
day-3-part-1-sample:
	bash day-3/part-1.sh day-3/sample.txt
day-3-part-1:
	bash day-3/part-1.sh day-3/input.txt
day-3-part-2-sample:
	bash day-3/part-2.sh day-3/sample.txt
day-3-part-2:
	bash day-3/part-2.sh day-3/input.txt
day-3:
	make day-3-part-1 day-3-part-2
