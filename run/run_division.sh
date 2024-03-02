# training
### Task1

# python train.py config/multiplication/plain/train_addition_bal.py --device='cuda:0' 

# python evaluate_additions.py --wandb_project='multiplication' --wandb_run_name='eval_plain' --device='cuda:1' \
# --dataset='multiplication/plain' --out_dir='out-multiplication/plain' \
# --max_new_tokens=5 --verbose=True \
# --prompt_overall="FILE:data/multiplication/plain/train_examples_3000_test.txt" > out-multiplication/plain/eval_plain.txt

# python train.py config/multiplication/dollar_reverse/train_addition_dollar_reverse.py --device='cuda:1'

# python evaluate_additions.py --wandb_project='multiplication' --wandb_run_name='eval_reverse' --device='cuda:1' \
# --dataset='multiplication/dollar_reverse' --out_dir='out-multiplication/dollar_reverse' \
# --reverse_c=True --zero_pad=False --max_new_tokens=5 --verbose=True \
# --prompt_overall="FILE:data/multiplication/dollar_reverse/train_examples_3000_test.txt" > out-multiplication/dollar_reverse/eval_reverse.txt


python3 train.py config2/division/plain/train_division_bal.py --device='mps'

python3 train.py config2/division/dollar_reverse/train_division_dollar_reverse.py

# python train.py config2/division/algorithmic_reasoning/train_addition_ar.py

python3 evaluate_additions.py --wandb_project='division' --wandb_run_name='eval_plain' --device='cpu' \
--dataset='bal' --out_dir='out2/division_plain' \
--algo_reason=False --verbose=True \
--data_type='text' --data_format='plain' --operator='/' \
--prompt_overall="FILE:/Users/karansampath/Documents/GitHub/teaching_arithmetic_division/data/bal/train_division_7000.txt" \
--prompt1="FILE:/Users/karansampath/Documents/GitHub/teaching_arithmetic_division/data/bal/train_division_3000.txt" > /Users/karansampath/Documents/GitHub/teaching_arithmetic_division/out2/division_plain/eval_ar.txt
