"------------------------------ Global Functions ------------------------------

"This function finds all of the subfiles recursively from the directory given
"in current_dir
"DO NOT USE ARGUMENTS dir_stack OR file_list
function FindSubfiles(dir_stack = [], file_list = [])
	let l:dir_path = ""
	if len(a:dir_stack) > 0
		let l:dir_path = "/"..join(a:dir_stack, "/")
	else
		let l:dir_path = a:dir_stack
	endif
	for l:filename in readdir(l:dir_path)
		if isdirectory(l:dir_path.."/"..l:filename)
			call add(a:dir_stack, l:filename)
			call FindSubfiles(a:dir_stack, a:file_list)
			call remove(a:dir_stack, -1)
		else
			call add(a:file_list, l:dir_path.."/"..l:filename)
		endif
	endfor
	return a:file_list
endfunction

"Uses fuzzy find to compare a:A against all subfiles of the current directory
"and returns all values that match.
function FuzzyFileCompletion(A,L,P)
	let l:files = []
	call FindSubfiles(split(getcwd(), "/"), l:files)
	if len(a:A) > 0
		return matchfuzzy(l:files, a:A)
	else
		return l:files
	endif
endfunction

