require 'open3'

class Command

  def parse(output)
    # parse the raw output of the terminal command if necessary
    output
  end


  def exec(command)
    processes, error = [], nil

    Open3.popen3(command) do |stdin, stdout, stderr, wait_thr|
      output = ""
      error_output = ""

      # Read stdout and stderr streams
      stdout_thread = Thread.new { output << stdout.read }
      stderr_thread = Thread.new { error_output << stderr.read }

      # Wait for threads to finish
      stdout_thread.join
      stderr_thread.join

      # Get the exit status
      exit_status = wait_thr.value

      if exit_status.success?
        processes = parse(output)
      else
        error = "Command '#{command}' exited with error: #{error_output}"
      end
    end

    [processes, error]
  end
end