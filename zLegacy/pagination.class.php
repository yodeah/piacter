<?php
//search?searchbox = auto & page = 1
class pagination
{

	private $pagenumb = array();
	private $page;
	private $item;
	private $paginationprint;

	function init($page,$item)
	{
		$page = $this->page;
		$item = $this->item;

	}

	function calculate()
	{
		if($this->page == 1){
			$this->pagenumb = [
				"0" => "1",
				"1" => "2",
				"2" => "3",
				"3" => "4",
				"4" => "5",
			];
		}
		if($this->page >= 3){
			$this->pagenumb = [
				"0" => ($page - 2),
				"1" => ($page - 1),
				"2" => $page,
				"3" => ($page + 1),
				"4" => ($page + 2),
			];
		}
	}

	function assemble()
	{
		$this->paginationprint = '<ul class="pagination">
		<li><a href="1">&laquo;</a></li>
		<li><a href="search?searchbox = '.$this->item.' & page = '.$this->pagenumb[0].'">'.$this->pagenumb[0].'</a></li>
		<li><a href="search?searchbox = '.$this->item.' & page = '.$this->pagenumb[1].'">'.$this->pagenumb[1].'</a></li>
		<li><a href="search?searchbox = '.$this->item.' & page = '.$this->pagenumb[2].'">'.$this->pagenumb[2].'</a></li>
		<li><a href="search?searchbox = '.$this->item.' & page = '.$this->pagenumb[3].'">'.$this->pagenumb[3].'</a></li>
		<li><a href="search?searchbox = '.$this->item.' & page = '.$this->pagenumb[4].'">'.$this->pagenumb[4].'</a></li>
		<li><a href="#">&raquo;</a></li>
		</ul>';

		echo $this->paginationprint;
	}


}
