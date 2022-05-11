python run_summarization.py \
    --model_name_or_path facebook/bart-base \
    --do_train \
    --do_eval \
    --train_file en.train.csv \
    --validation_file en.test.csv \
    --output_dir ./models/test-summarization-spelling/ \
    --overwrite_output_dir \
    --per_device_train_batch_size=32 \
    --per_device_eval_batch_size=16 \
    --predict_with_generate \
	--logging_steps="10" \
    --save_total_limit="2" \
    --max_target_length=1024 \
    --max_source_length=1024