return {
    'wthollingsworth/pomodoro.nvim',
    requires = 'MunifTanjim/nui.nvim',
    config = function()
        require('pomodoro').setup({
            time_work = 50,
            time_break_short = 10,
            time_break_long = 20,
            timers_to_long_break = 4
        })
    end,
    keys = {
        {"<Leader>xtp", "<cmd>PomodoroStart<cr>", desc= "Start pomodoro"},
        {"<Leader>xts", "<cmd>PomodoroStop<cr>", desc= "Stop pomodoro"},
    },
}
