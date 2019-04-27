class UsuariosController < ApplicationController
	def index 
		@usuarios = Usuario.all
	end

	def new 
		@usuario = Usuario.new
	end

	def create 
		@usuario = Usuario.new(usuario_params)
		if @usuario.save
			redirect_to usuarios_path
		else
			render :new
		end
	end

	def edit
		@usuario = Usuario.find(params[:id])
	
	end

	def update
		@usuario = Usuario.find(params[:id])
		if @usuario.update(usuario_params)
			redirect_to usuarios_path
		else
			render :edit
		end
	end

	def delete
		@usuario = Usuario.find(params[:id])
		@usuario.destroy
		redirect_to usuarios_path
	end

	

private
def usuario_params
	params.require(:usuario).permit(:name, :apellidos, :correo , :direccion, :telefono)
	end
end