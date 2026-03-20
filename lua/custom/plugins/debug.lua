return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'nvim-neotest/nvim-nio',
      'mfussenegger/nvim-dap-python',
    },
    keys = {
      {
        '<leader>dh',
        function()
          require('dapui').eval()
        end,
        desc = 'Debug: Hover Evaluate',
      },
      {
        '<leader>dc',
        function()
          require('dap').continue()
        end,
        desc = 'Debug: Continue',
      },
      {
        '<leader>db',
        function()
          require('dap').toggle_breakpoint()
        end,
        desc = 'Debug: Toggle Breakpoint',
      },
      {
        '<leader>dB',
        function()
          require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
        end,
        desc = 'Debug: Conditional Breakpoint',
      },
      {
        '<leader>di',
        function()
          require('dap').step_into()
        end,
        desc = 'Debug: Step Into',
      },
      {
        '<leader>do',
        function()
          require('dap').step_over()
        end,
        desc = 'Debug: Step Over',
      },
      {
        '<leader>dO',
        function()
          require('dap').step_out()
        end,
        desc = 'Debug: Step Out',
      },
      {
        '<leader>dr',
        function()
          require('dap').repl.open()
        end,
        desc = 'Debug: Open REPL',
      },
      {
        '<leader>du',
        function()
          require('dapui').toggle()
        end,
        desc = 'Debug: Toggle UI',
      },
      {
        '<leader>dl',
        function()
          require('dap').run_last()
        end,
        desc = 'Debug: Run Last',
      },
      {
        '<leader>dq',
        function()
          require('dap').terminate()
        end,
        desc = 'Debug: Terminate',
      },
      {
        '<leader>dt',
        function()
          require('dap-python').test_method()
        end,
        desc = 'Debug Python: Test Method',
      },
      {
        '<leader>dT',
        function()
          require('dap-python').test_class()
        end,
        desc = 'Debug Python: Test Class',
      },
    },
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'

      dapui.setup {
        icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
        controls = {
          icons = {
            pause = '⏸',
            play = '▶',
            step_into = '⏎',
            step_over = '⏭',
            step_out = '⏮',
            step_back = 'b',
            run_last = '▶▶',
            terminate = '⏹',
            disconnect = '⏏',
          },
        },
      }

      -- require('dap-python').setup(vim.fn.expand '~/.virtualenvs/debugpy/bin/python')
      require('dap-python').setup(vim.fn.expand '~/.venvs/sandbox/bin/python')

      dap.listeners.after.event_initialized['dapui_config'] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated['dapui_config'] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited['dapui_config'] = function()
        dapui.close()
      end
    end,
  },
}
