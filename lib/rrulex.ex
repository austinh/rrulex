defmodule RRulex do
  @moduledoc """
  Parses an RRULE from the iCalendar RFC-2445 https://www.ietf.org/rfc/rfc2445.txt
  and expands the recurring event it to a List of datetimes.
  """

  defstruct frequency: nil,
            until: nil,
            count: nil,
            interval: nil,
            by_second: [],
            by_minute: [],
            by_hour: [],
            by_day: [],
            by_month: [],
            by_month_day: [],
            by_year_day: [],
            by_week_number: [],
            by_set_pos: [],
            week_start: nil

  def parse(rrule_string), do: RRulex.Parser.parse(rrule_string)

  def all(rrulex) do
  end

  def between(rrulex, start_date, end_date) do
  end
end
