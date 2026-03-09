next_task_line=$(task next limit:1 | head -4 | tail -1)
trimmed=$(echo $next_task_line | awk '{$1=$1};1')
task_id=$(echo $trimmed | cut -d' ' -f1)

task _get $task_id.description
